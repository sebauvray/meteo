import React from 'react';
import axios from 'axios';
const url = 'http://openweathermap.org/img/wn/';

export default class WeatherList extends React.Component {
  state = {
    weathers: []
  }

  componentDidMount() {
    axios.get(`http://localhost:3000/weather/`)
      .then(res => {
        const weathers = res.data;
        this.setState({ weathers });
      })
  }

  render() {
    return (
      <div>
        <ul>
        {
          this.state.weathers
            .map(weather =>
              <div id={weather.id}>
                <p>{weather.main}</p>
                <p>{weather.description}</p>
                <img src={url+weather.icon+'.png'} alt={weather.icon}/>
              </div>
            )
        }
        </ul>
      </div>
    )
  }
}