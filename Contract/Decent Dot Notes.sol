// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedNotesLibrary {
    
    struct Note {
        string title;      // Subject name
        string ipfsHash;   // IPFS hash where the note is stored
        address uploader;  // Address of the student who uploaded the note
        uint256 timestamp; // Time of upload
    }

    // Mapping from topic (unique ID) to Note
    mapping(string => Note) private notesByTopic;

    event NoteUploaded(string topic, string title, string ipfsHash, address uploader, uint256 timestamp);

    // Function to upload a note with a unique topic ID
    function uploadNote(string memory _title, string memory _topic, string memory _ipfsHash) public {
        require(bytes(notesByTopic[_topic].ipfsHash).length == 0, "Note with this topic ID already exists.");
        
        notesByTopic[_topic] = Note({
            title: _title,
            ipfsHash: _ipfsHash,
            uploader: msg.sender,
            timestamp: block.timestamp
        });

        emit NoteUploaded(_topic, _title, _ipfsHash, msg.sender, block.timestamp);
    }

    // Function to retrieve a note by topic (unique ID)
    function getNoteByTopic(string memory _topic) public view returns (string memory, string memory, address, uint256) {
        require(bytes(notesByTopic[_topic].ipfsHash).length != 0, "Note with this topic ID does not exist.");
        Note memory note = notesByTopic[_topic];
        return (note.title, note.ipfsHash, note.uploader, note.timestamp);
    }
}
