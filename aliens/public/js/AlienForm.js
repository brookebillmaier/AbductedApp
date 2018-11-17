class AlienForm extends React.Component {
  constructor (props) {
    super(props)
    this.state = {
      name: '',
      species: '',
      birthday: '',
      planet: '',
      image: ''
    }
    this.handleChange = this.handleChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }
  componentDidMount(){
    if(this.props.alien){
      this.setState({
        name: this.props.alien.name,
        birthday: this.props.alien.birthday,
        species: this.props.alien.species,
        planet: this.props.alien.planet,
        image: this.props.alien.image,
        // id: this.props.alien.id
        // do we need an ID? for the event.target.id below?
      })
    }
  }

  handleChange (event) {
    this.setState({[event.target.id]: event.target.value})

  }
  handleSubmit (event) {
    event.preventDefault()
    this.props.handleSubmit(this.state)
  }
  render () {
    return (
      <div >
        <form onSubmit={this.handleSubmit}>
          <label className='label' for='name'>Name</label>
          <div className='control'>
            <input
              className='input'
              type='text'
              id='name'
              onChange={this.handleChange}
              value={this.state.name}
            />
          </div>
          <label className='label' for='birthday'>birthday</label>
          <div className='control'>
            <input
              className='input'
              type='number'
              onChange={this.handleChange}
              value={this.state.birthday}
              id='birthday'
            />
          </div>
          <label className='label' for='species'>Species</label>
          <div className='control'>
            <input className='input'
              type='text'
              id='species'
              onChange={this.handleChange}
              value={this.state.species}
            />
          </div>
          <label className='label' for='planet'>Planet</label>
          <div className='control'>
            <input
              className='input'
              type='tel'
              id='planet'
              onChange={this.handleChange}
              value={this.state.planet}
            />
          </div>
          <label className='label 'for='image'>Image</label>
          <div className='control'>
            <input
              className='input'
              type='text'
              id='image'
              onChange={this.handleChange}
              value={this.state.image}
            />
          </div>
          <div className='control'>
            <input type='submit' value='Submit' />
          </div>
        </form>
          <button {/*className="button is-link" onClick={()=> this.props.toggleState('peopleListIsVisible', 'addPersonIsVisible')}*/}>Cancel</button>
      </div>
    )
  }
}
