class Aliens extends React.Component {
  constructor (props){
    super(props)

    //set up states
    this.state = {
      aliensListIsVisible: true,
      addAlienIsVisible: false,
      alienIsVisible: false,
      editAlienIsVisible: false,
      aliens: [],
      alien: {}
    }

    // binds
    this.deleteAlien = this.deleteAlien.bind(this)
    this.handleCreate = this.handleCreate.bind(this)
    this.handleCreateSubmit = this.handleCreateSubmit.bind(this)
    this.getAlien = this.getAlien.bind(this)
    this.toggleState = this.toggleState.bind(this)
    this.handleUpdateSubmit = this.handleUpdateSubmit.bind(this)
  }


  componentDidMount () {
    this.getAliens()
  }

  deleteAlien (alien, index) {
    fetch('aliens/' + alien.id,
    {
      method: 'DELETE'
    })
    .then(data => {
      this.setState({
        aliens: [
          ...this.state.aliens.slic(0, index),
          ...this.state.aliens.slice(index + 1)
        ]
      })
    })
  }

  handleCreate (alien) {
    this.setState({aliens: {alien, ...this.state.aliens}})
  }

  handleCreateSubmit (alien) {
    fetch('/aliens', {
      body: JSON.stringify(alien),
      method: 'POST',
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Content-Type': 'application/json'
      }
    })
    .then(createdAlien => {
      return createdAlien.json()
    })
    .then(jsonedAlien => {
      this.handleCreate(jsonedAlien)
      this.toggleState('addAlienIsVisible', 'aliensListIsVisible')
    })
    .catch(error => console.log(error))
    }
  toggleState (st1, st2) {
    this.setState({
      [st1]: !this.state[st1],
      [st2]: !this.state[st2]
    })
  }

  handleUpdateSubmit (alien) {
    fetch('/aliens/'+ alien.id, {
      body: JSON.stringify(alien),
      method: 'PUT',
      headers: {
        'Accept': 'application/json, text/plain, */*',
        'Content-Type': 'application/json'
      }
    })
      .then(updatedAlien => {
        return updatedAlien.json()
      })
      .then(jsonedAlien => {
        //need to update state be naughty, call that db!
        this.getAliens()
        this.toggleState('aliensListIsVisible', 'alienIsVisible')
      })
      .catch(error => console.log(error))
  }

  render () {
  return (
    <div className='aliens'>
      <h2>Aliens</h2>
      <button className='button is-success' onClick={()=> this.toggleState('addAlienIsVisible')}>Add an Alien</button>

      {this.state.aliensListIsVisible ?
        <AliensList
        toggleState={this.toggleState}
        aliens={this.state.aliens}
        getAlien={this.getAlien}
        deleteAlien={this.deleteAlien}
        /> : '' }
      {this.state.addAlienIsVisible ?
        <AlienForm
        toggleState={this.toggleState}
        handleCreate={this.handleCreate}
        handleSubmit={this.handleCreateSubmit}
        /> : '' }
      {this.state.alienIsVisible ?
        <Alien
        toggleState={this.toggleState}
        alien = {this.state.alien}
        handleSubmit={this.handleUpdateSubmit}
        /> : ''}
    </div>
  )
}

}
