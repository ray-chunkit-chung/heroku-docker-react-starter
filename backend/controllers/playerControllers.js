import mongoose from 'mongoose';
import { PlayerSchema } from '../models/playerModel'

const Player = mongoose.model('Player', PlayerSchema)

export const addPlayer = (req, res) => {
  let player = new Player(req.body);
  player.save((err, Player) => {
    if (err) {
      res.send(err);
    }
    res.json(Player);
  })
}