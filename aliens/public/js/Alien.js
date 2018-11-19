class Alien extends React.Component {
  render () {
    return (
      <div>
        <div class='license'>
          <div class='banner'>Alien Department of Spaceships License</div>
            <div>
              <img class='alienPic' src={this.props.alien.image} alt={this.props.alien.name} />
            </div>
          <div>
            <div class='cardInfo'>
              <h4><span>Name:</span> {this.props.alien.name} </h4>
              <h4><span>DOB:</span> {this.props.alien.birthday} </h4>
              <h4><span>Planet:</span> {this.props.alien.planet} </h4>
              <h4><span>Species:</span> {this.props.alien.species} </h4>
            </div>

          <div>
            <button class = 'alienbuttons' onClick={()=> this.props.toggleState('alienIsVisible', 'aliensListIsVisible')

          }>See All Aliens</button>
          <button class = 'alienbuttons' onClick={()=> this.props.toggleState('addAlienIsVisible', 'alienIsVisible')

        }>Edit</button>
          </div>
          </div>
          </div>
          {this.addAlienIsVisible ?
          <AlienForm alien={this.props.alien}   handleSubmit={this.props.handleSubmit}/>
          :
          ''
        }
        </div>
      )
  }
}
