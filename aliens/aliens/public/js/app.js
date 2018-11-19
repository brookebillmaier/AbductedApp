class App extends React.Component {
  render () {
    return (
      <div className='section'>
<<<<<<< HEAD
      <div className='nav'><a href ='/'><img src = 'logo.png' className='logo'/></a>
      </div>
      <h1 className='title'></h1>
=======
      <h1 className='title'>Alien Department of Spaceships</h1>
>>>>>>> parent of caad5cc... fixing merge conflicts
      <div className='columns'>
        <Aliens />
        </div>
        <div className='footer'>

        </div>
      </div>
    )
  }
}

ReactDOM.render (
  <App />,
  document.querySelector('.container')
)
