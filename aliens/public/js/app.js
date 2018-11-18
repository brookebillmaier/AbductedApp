class App extends React.Component {
  render () {
    return (
      <div className='section'>
      <nav></nav>
      <h1 className='title'>Alien Department of Spaceships</h1>
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
