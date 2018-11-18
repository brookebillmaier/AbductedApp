class App extends React.Component {
  render () {
    return (
      <div className='section'>
      <div className='nav'>Alien Department <br/>of Spaceships</div>
     <h1 className='title'></h1>
      <div className='columns'>
        <Aliens />
        </div>
      </div>
    )
  }
}

ReactDOM.render (
  <App />,
  document.querySelector('.container')
)
