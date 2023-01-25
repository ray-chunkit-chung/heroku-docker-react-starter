import { addPlayer } from '../controllers/playerControllers';

const routes = (app) => {
  app.route('/players')
    .post(addPlayer);
}

export default routes;