def ansiblelint(quality) {
  sh 'mkdir -p "~/.ansible/collections"'
  cache(caches: [
    arbitraryFileCache(
        path: "~/.ansible/collections",
        includes: "**/*",
        cacheValidityDecidingFile: "requirements.yml"
    )
  ]) {
    sh 'find . -name requirements.yml -exec ansible-galaxy collection install -r {} --ignore-certs --collections-path "~/.ansible/collections" \\;'
  }  
  sh 'ansible-galaxy collection list'
  sh 'touch ansible-lint.txt'
  sh 'ansible-lint -p | tee -a ansible-lint.txt'
  recordIssues enabledForFailure: true, qualityGates: [[threshold: quality, type: 'TOTAL', unstable: false]],  tools: [ansibleLint(id: 'ansibleLint', name: 'Ansible Lint', pattern: 'ansible-lint.txt')]
  archiveArtifacts artifacts: 'ansible-lint.txt', followSymlinks: false
  sh 'rm ansible-lint.txt'
}
def checkov() {
  sh 'checkov --soft-fail --directory . -o junitxml --output-file-path build/checkov --skip-download'
  recordIssues enabledForFailure: true, tools: [junitParser(id: 'checkov', name: 'Checkov', pattern: 'build/checkov/results_junitxml.xml')]
  archiveArtifacts artifacts: 'build/checkov/results_junitxml.xml', followSymlinks: false
  sh 'rm build/checkov/results_junitxml.xml'    
}
def cloc() {
  sh 'cloc --by-file --xml --fullpath --not-match-d="(build|vendor)" --out=cloc.xml ./'
  sloccountPublish encoding: '', pattern: 'cloc.xml'
  archiveArtifacts artifacts: 'cloc.xml', followSymlinks: false
  sh 'rm cloc.xml'
}
def shellcheck(quality) {
  sh 'touch shellcheck.xml'
  sh '/usr/local/bin/shellcheck.bash | tee -a shellcheck.xml'
  recordIssues enabledForFailure: true, qualityGates: [[threshold: quality, type: 'TOTAL', unstable: false]], tools: [checkStyle(id: 'shellcheck', name: 'Shellcheck', pattern: 'shellcheck.xml')]
  archiveArtifacts artifacts: 'shellcheck.xml', followSymlinks: false
  sh 'rm shellcheck.xml'
}
def yamllint(quality) {
  sh 'touch yamllint.txt'
  sh 'yamllint -f parsable . | tee -a yamllint.txt'
  recordIssues enabledForFailure: true, qualityGates: [[threshold: quality, type: 'TOTAL', unstable: false]],  tools: [yamlLint(id: 'yamlLint', name: 'Yaml Lint', pattern: 'yamllint.txt')]
  archiveArtifacts artifacts: 'yamllint.txt', followSymlinks: false
  sh 'rm yamllint.txt'
}

pipeline {
  agent any
  options {
    ansiColor('xterm')
  }
  environment {
    ANSIBLE_COLLECTIONS_PATH = "~/.ansible/collections/:/usr/share/ansible/collections/:../../../../../../../collections/"
    DOCKER_HOST = 'tcp://172.17.0.1:2375'
    QUALITY_ANSIBLE = "3"
    QUALITY_SHELL = "2"
    QUALITY_YAML = "1"
  }
  stages {
    stage('QA') {
      parallel {
        stage ('Cloc') {
          agent {
            docker {
              image 'ysebastia/cloc:2.04'
            }
          }
          steps {
              mineRepository()
              cloc()
          }
        }
        stage ('Ansible lint') {
          agent {
            docker {
              image 'ysebastia/ansible-lint:25.4.0'
            }
          }
          steps {
            ansiblelint(QUALITY_ANSIBLE)
          }
        }
        stage ('checkov') {
          agent {
            docker {
              image 'ysebastia/checkov:3.2.413'
            }
          }
          steps {
            checkov()
          }
        }
        stage ('shellcheck') {
          agent {
            docker {
              image 'ysebastia/shellcheck:0.10.0'
            }
          }
          steps {
            shellcheck(QUALITY_SHELL)
          }
        }
        stage ('yamllint') {
          agent {
            docker {
              image 'ysebastia/yamllint:1.37.0'
            }
          }
          steps {
            yamllint(QUALITY_YAML)
          }
        }
      }
    }
    stage('Molecule') {
      agent {
        docker {
          image 'docker.io/ysebastia/molecule:25.4.0'
          args '-v /var/run/docker.sock:/var/run/docker.sock --privileged -e NO_PROXY=$NO_PROXY -e http_proxy=$HTTP_PROXY -e https_proxy=$HTTPS_PROXY'
        }
      }
      steps {
          sh 'mkdir -p "~/.ansible/collections"'
          cache(caches: [
            arbitraryFileCache(
                path: "~/.ansible/collections",
                includes: "**/*",
                cacheValidityDecidingFile: "requirements.yml"
            )
          ]) {
            sh 'find . -name requirements.yml -exec ansible-galaxy collection install -r {} --ignore-certs --collections-path "~/.ansible/collections" \\;'
          }          
          sh 'find . -name requirements.txt -exec pip install --no-cache -r {} \\;'
          sh 'ansible-galaxy collection list'
          sh 'run_molecule.bash'
      }
    }    
  }
  post {
    always {
      cleanWs()
    }
  }
}
