![image](https://github.com/user-attachments/assets/6059020c-8fe0-4be3-85cf-77ced4fea41f)

# Decent Dot Notes

## Vision

Decent Dot Notes aims to create a secure, transparent, and efficient platform for students to upload, share, and access handwritten notes. By leveraging the Educhain blockchain and IPFS (InterPlanetary File System), this project ensures that notes are stored in a decentralized manner, minimizing reliance on central servers and maximizing availability.

## Features

- **Upload Notes:** Students can upload their notes by providing a unique topic ID, a subject title, and an IPFS hash where the note is stored.
- **Retrieve Notes:** Users can retrieve notes by entering the topic ID, which returns the note details including the subject title, IPFS hash, uploader’s address, and upload timestamp.

## Flowchart

1. **Start**

---

2. **Upload Note Process:**
   1. **Input:** User provides `title`, `topic`, and `IPFS hash`.
   2. **Condition:** Check if the `topic` ID already exists.
      1. **Yes:** Display error "Note with this topic ID already exists."
      2. **No:** Proceed to the next step.
   3. **Action:**
      1. Store the `Note` in `notesByTopic` mapping.
      2. Emit `NoteUploaded` event with details (`topic`, `title`, `IPFS hash`, `uploader`, `timestamp`).
   4. **End of Upload Process**

---

3. **Retrieve Note Process:**
   1. **Input:** User provides `topic`.
   2. **Condition:** Check if the `topic` ID exists.
      1. **No:** Display error "Note with this topic ID does not exist."
      2. **Yes:** Proceed to the next step.
   3. **Action:**
      1. Retrieve the `Note` from the `notesByTopic` mapping.
      2. Return the `Note` details (`title`, `IPFS hash`, `uploader`, `timestamp`).
   4. **End of Retrieve Process**

---

4. **End**
   

#### Contract Address

- **Network:**
- **Contract Address:** 0xfB36A7BA9A266e16c4c6EC312FD8739D221793c6

![image](https://github.com/user-attachments/assets/20f37c81-56c7-426f-83a7-7530e2e75451)

 
## Future Scope

1. **Access Control:** Implement role-based access control to restrict note uploads and access based on user roles.
2. **Advanced Search:** Develop a more sophisticated search mechanism to filter notes by multiple criteria.
3. **Monetization:** Introduce features for monetizing notes, such as paid access or premium note subscriptions.
4. **Integration:** Explore integrations with educational platforms and other decentralized applications (dApps) for enhanced functionality.

## Contact Details

For further information or support, please reach out to:

- **Name:** Ramanuz Kashyap
- **Email:** ramanuzkashyap4@gmail.com
- **Twitter:** (https://x.com/_RAMicle_)

Feel free to contact me for any inquiries or collaboration opportunities related to Decent Dot Notes.

---

This README provides an overview of the Decent Dot Notes project, including its vision, workflow, and future enhancements. For the latest updates, keep an eye on this document and the project’s repository.
