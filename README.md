# Decent Dot Notes

This project is a smart contract written in Solidity that allows students to upload and retrieve handwritten notes in a decentralized manner using the Ethereum blockchain. The notes themselves are stored on IPFS, a decentralized storage network, while the contract manages and organizes the notes using unique topic IDs.

## Features

- **Upload Notes:** Students can upload their handwritten notes by providing a title, a unique topic ID, and an IPFS hash (which points to where the note is stored on IPFS).
- **Retrieve Notes:** Any student can retrieve a note by entering the topic ID, which fetches the note details including the title, IPFS link, uploader's address, and the upload timestamp.
- **Decentralized Storage:** The notes are stored on IPFS, ensuring they are distributed and not reliant on a central server.

## Smart Contract Breakdown

### 1. **Struct: `Note`**
   - **`title`:** The subject name of the note.
   - **`ipfsHash`:** The unique identifier (hash) for the note file stored on IPFS.
   - **`uploader`:** The Ethereum address of the student who uploaded the note.
   - **`timestamp`:** The exact time when the note was uploaded to the blockchain.

### 2. **Mapping: `notesByTopic`**
   - **`mapping(string => Note)`:** Links a topic (a unique string identifier) to a `Note` structure. This mapping allows for easy access and retrieval of notes based on their unique topic IDs.

### 3. **Event: `NoteUploaded`**
   - **`NoteUploaded`:** An event that gets triggered every time a new note is uploaded. This event logs the topic, title, IPFS hash, uploader's address, and the timestamp, making it easier to track uploads on the blockchain.

### 4. **Function: `uploadNote`**
   - **Parameters:** 
     - `_title` (string): The subject name of the note.
     - `_topic` (string): A unique identifier for the note.
     - `_ipfsHash` (string): The IPFS hash pointing to the note file.
   - **Functionality:** 
     - Allows a student to upload a note by providing the required parameters.
     - Ensures that a note with the same topic ID doesn’t already exist.
     - Adds the new note to the `notesByTopic` mapping.
     - Triggers the `NoteUploaded` event to log the upload.

### 5. **Function: `getNoteByTopic`**
   - **Parameter:** 
     - `_topic` (string): The unique topic ID of the note to retrieve.
   - **Functionality:** 
     - Allows any user to retrieve a note using its topic ID.
     - Ensures the note exists before retrieval.
     - Returns the note's title, IPFS hash, uploader's address, and timestamp.

## Usage

### Upload a Note
To upload a note, a student will need to:
1. Specify the subject name as the title.
2. Create a unique topic ID.
3. Provide the IPFS hash where the note is stored.

### Retrieve a Note
To retrieve a note, a student simply needs to provide the topic ID, and the contract will return the relevant note details.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

This smart contract provides a decentralized and secure way for students to share and access handwritten notes, making it a useful tool in an academic setting.
