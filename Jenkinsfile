node {
  git branch: 'main', url: 'https://github.com/SiwatINC/home-assistant-tensorflow'
  docker.withRegistry("https://ghcr.io/v2") {
      docker.build("siwatinc/homeassistant-tensorflow:latest").push()
  }
}