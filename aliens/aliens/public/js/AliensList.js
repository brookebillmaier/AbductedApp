class AliensList extends React.Component {
  render (){
    return (
      <table className='AliensList'>
        <tbody>
        {this.props.aliens.map((alien, index) => {
          return (

            <tr >
              <td onClick={()=> { this.props.getAlien(alien); this.props.toggleState('aliensListIsVisible', 'alienIsVisible')}}>
                <img src={alien.image} alt={alien.name} className='avatar' />
              </td>

              <td>
                <h3> {alien.name} </h3>
              </td>

              <td>
              <h3>
                {alien.planet}
              </h3>
              </td>

              <td>
                  <button className='delete' onClick={() => this.props.deleteAlien(alien, index)}>Remove</button>
              </td>
            </tr>
          )
        })}
        </tbody>
      </table>
    )
  }
}
