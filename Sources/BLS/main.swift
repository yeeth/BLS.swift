//
//  main.swift
//  BLS
//
//  Created by Eric Tu on 2/2/19.
//

import Foundation

var sec1 = UnsafeMutablePointer<blsSecretKey>.allocate(capacity: 32)
var sec2 = UnsafeMutablePointer<blsSecretKey>.allocate(capacity: 32)


initializeBLS()
blsSecretKeySetByCSPRNG(sec1)
blsSecretKeySetByCSPRNG(sec2)

let pub1 = UnsafeMutablePointer<blsPublicKey>.allocate(capacity: 32)
let pub2 = UnsafeMutablePointer<blsPublicKey>.allocate(capacity: 32)

blsGetPublicKey(pub1,sec1)
blsGetPublicKey(pub2,sec2)

//print(pub1.pointee)
//print(pub2.pointee)

let sig1 = UnsafeMutablePointer<blsSignature>.allocate(capacity: 32)
let sig2 = UnsafeMutablePointer<blsSignature>.allocate(capacity: 32)

var x = "abcd"
blsSign(sig1, sec1, &x, 4)
blsSign(sig2, sec2, &x, 4)

print(sig1.pointee)
print(sig2.pointee)

//BLS_DLL_API void blsSecretKeyAdd(blsSecretKey *sec, const blsSecretKey *rhs);
//BLS_DLL_API void blsPublicKeyAdd(blsPublicKey *pub, const blsPublicKey *rhs);
//BLS_DLL_API void blsSignatureAdd(blsSignature *sig, const blsSignature *rhs);

blsSignatureAdd(sig1, sig2)
blsPublicKeyAdd(pub1, pub2)

//BLS_DLL_API int blsVerify(const blsSignature *sig, const blsPublicKey *pub, const void *m, mclSize size);

var y = "abce"
let res = blsVerify(sig1, pub1, &y, 4)

print(res)

//BLS_DLL_API void blsSign(blsSignature *sig, const blsSecretKey *sec, const void *m, mclSize size);


