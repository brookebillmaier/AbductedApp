class App extends React.Component {
  render () {
    return (
      <div className='section'>
      <div className='nav'><a href ='/'><img src = 'logo.png' className='logo'/></a>
      </div>
      <h1 className='title'></h1>
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
