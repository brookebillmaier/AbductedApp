class AliensList extends React.Component {
  render (){
    return (
      <table>
        <tbody>
        {this.props.aliens.map((alien, index) => {
          return (
            <tr onClick={()=> { this.props.getAlien(alien); this.props.toggleState('aliensListIsVisible', 'alienIsVisible')}}>
              <td>
                <img src={alien.avatar} alt={alien.name} />
              </td>
              <td>
                <h3> {alien.name} </h3>
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
