import GameDataSerive from './GameDataService'

const baseUrl = "https://api.rawg.io/api";
const apiKey = "376e19295edf49948e86dad1da853b22";


const getGameDetailById = async (id) => {
    try {
      const res = await GameDataSerive.get(`${baseUrl}/games/${id}?key=${apiKey}`);
  
      return res.data;
    } catch (err) {
      throw new Error(err);
    }
  };


  export {getGameDetailById};