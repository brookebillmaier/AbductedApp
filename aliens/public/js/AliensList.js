class AliensList extends React.Component {
  render (){
    return (
      <table>
        <tbody>
        {this.props.aliens.map((alien, index) => {
          return (
            <tr>
              <td onClick={()=> { this.props.getAlien(alien); this.props.toggleState('aliensListIsVisible', 'alienIsVisible')}}>
                <img src={alien.image} alt={alien.name} className='avatar' />
            <tr onClick={()=> { this.props.getAlien(alien); this.props.toggleState('aliensListIsVisible', 'alienIsVisible')}}>
              <td>
                <img src={alien.image} alt={alien.name} className="avatar" />
              </td>
              <td>
                <h3> {alien.name} </h3>
              </td>
              <td>
                  <button className='delete' onClick={() => this.props.deleteAlien(alien, index)}>Delete</button>
              </td>
              </tr>
              </td>
            </tr>
          )
        })}
        </tbody>
      </table>
    )
  }
}
