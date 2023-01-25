import mongoose from 'mongoose';

const Schema = mongoose.Schema;

const playerSchema = new Schema({
  name: {
    type: String,
    required: true
  }
});

const PlayerModel = mongoose.model('Player', goalSchema);

module.exports = PlayerModel;
