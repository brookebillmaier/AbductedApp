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

        <div className='footer'><a href ="/"><img src = 'logo.png' className='logofooter'/></a>
          <h3 className='footertext'>Created at <a href = "https://generalassemb.ly">GA</a> by <a href ="https://github.com/merlz6">Michael Merlo</a> and <a href = "https://github.com/brookebillmaier">Brooke Billmaier</a></h3>
        </div>
      </div>
    )
  }
}

ReactDOM.render (
  <App />,
  document.querySelector('.container')
)
