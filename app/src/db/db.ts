import { openDatabaseAsync } from 'expo-sqlite';

const db = openDatabaseAsync('sailor.db');

export default db;