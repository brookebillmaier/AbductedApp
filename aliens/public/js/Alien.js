class Alien extends React.Component {

  render () {
    return (
      <div>
          <div>
            <div>
              <img src={this.props.alien.image} alt={this.props.alien.name} />
            </div>
          </div>
          <div>
            <div>
              <h3><span>Name:</span> {this.props.alien.name} </h3>
              <h4><span>Birthday:</span> {this.props.alien.birthday} </h4>
              <h4><span>Planet:</span> {this.props.alien.planet} </h4>
            </div>

          <div>
            <button  onClick={()=> this.props.toggleState('alienListIsVisible', 'alienIsVisible')}>See All Aliens</button>
          </div>
          </div>
          <AlienForm alien={this.props.alien}   handleSubmit={this.props.handleSubmit}/>
        </div>
        </div>
      )
  }
}
