# liboqs_flutter_example

Demonstrates how to use the liboqs_flutter plugin.

## Getting Started

This is an example for generating KeyPairs

Generate New KeyPair:
    
        // Initialize LiboqsKem for Kyber1024
        LiboqsKem.makeNewKem('Kyber1024');
    
        // Generate a new key pair
        var newKeyPair = keyGen();
    
        // Extract public and private keys
        String publicKey = newKeyPair['PubKey']!;
        String privateKey = newKeyPair['PrivKey']!;
    
        // Store the private key in shared preferences
        await prefs.setString('userPrivateKey', privateKey);
        await prefs.setString('userPublicKey', publicKey);
        // Return the public key
        return publicKey;

