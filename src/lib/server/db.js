import { MongoClient, ObjectId } from 'mongodb';
import { DB_URI } from '$app/env/private';

// Verbindung zur MongoDB (Atlas). DB_URI kommt aus .env – nie ins Repo committen!
const client = new MongoClient(DB_URI);
await client.connect();
const db = client.db('studydesk');

// TODO: Collections und CRUD-Funktionen ergänzen, sobald das Datenmodell steht.
// Muster: getItems(), getItem(id), createItem(item), updateItem(item), deleteItem(id)

export default {};
