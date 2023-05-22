def ansiblelint(quality) {
  sh '[[ -f requirements.yml ]] && ansible-galaxy install -r requirements.yml'
  sh 'touch ansible-lint.txt'
  sh 'ansible-lint -p --exclude ansible_collections | tee -a ansible-lint.txt'
  recordIssues enabledForFailure: true, qualityGates: [[threshold: quality, type: 'TOTAL', unstable: false]],  tools: [ansibleLint(id: 'ansibleLint', name: 'Ansible Lint', pattern: 'ansible-lint.txt')]
  archiveArtifacts artifacts: 'ansible-lint.txt', followSymlinks: false
  sh 'rm ansible-lint.txt'
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
  environment {
    QUALITY_ANSIBLE = "2"
    QUALITY_SHELL = "2"
    QUALITY_YAML = "1"
  }
  stages {
    stage('QA') {
      parallel {
        stage ('Cloc') {
          agent {
            docker {
              label 'docker'
              image 'ysebastia/cloc:1.96'
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
              label 'docker'
              image 'ysebastia/ansible-lint:6.16.2'
            }
          }
          steps {
            ansiblelint(QUALITY_ANSIBLE)
          }
        }
        stage ('shellcheck') {
          agent {
            docker {
              label 'docker'
              image 'ysebastia/shellcheck:0.9.0-r2'
            }
          }
          steps {
            shellcheck(QUALITY_SHELL)
          }
        }
        stage ('yamllint') {
          agent {
            docker {
              label 'docker'
              image 'ysebastia/yamllint:1.31.0'
            }
          }
          steps {
            yamllint(QUALITY_YAML)
          }
        }
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
