class AliensList extends React.Component {
  render (){
    return (
      <table>
        <tbody>
        {this.props.aliens.map((alien, index) => {
          return (
            <tr>
              <td onClick={()=> { this.props.getAlien(alien); this.props.toggleState('aliensListIsVisible', 'alienIsVisible')}}>
                <img src={alien.avatar} alt={alien.name} />
              </td>
              <td className='alien' onClick={()=> { this.props.getAlien(alien); this.props.toggleState('aliensListIsVisible', 'alienIsVisible')}}>
                <h3> {alien.name} </h3>
              </td>
              <td>
                  <button className='edit'>Edit</button>
              </td>
              <td>
                  <button className='delete' onClick={() => this.props.deleteAlien(alien, index)}>Delete</button>
              </td>
            </tr>
          )
        })}
        </tbody>
      </table>
    )
  }
}
