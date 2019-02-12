//
//  main.swift
//  BLS
//
//  Created by Eric Tu on 2/2/19.
//

import Foundation

print("Init BLS: ", initializeBLS())


//var sec1 = UnsafeMutablePointer<blsSecretKey>.allocate(capacity: 32)
//var sec2 = UnsafeMutablePointer<blsSecretKey>.allocate(capacity: 32)



//Verify if secret key is valid.
var strpkey = "263dbd792f5b1be47ed85f8938c0f29586af0d3ac7b977f21c278fe1462040e3"
var sec3 = UnsafeMutablePointer<blsSecretKey>.allocate(capacity: 100)
blsSecretKeySetByCSPRNG(sec3)
//print("Secret Key Set Success: ", blsSecretKeySetHexStr(sec3, strpkey, strpkey.count))
var hexsec = UnsafeMutablePointer<CChar>.allocate(capacity: 400)
print("Secret Key Get Success: ", blsSecretKeyGetHexStr(hexsec, 400, sec3))

//print("Does getting and setting SECKEY work?: ", String(cString: hexsec) == strpkey)


////BLS_DLL_API mclSize blsPublicKeyDeserialize(blsPublicKey *pub, const void *buf, mclSize bufSize);
////BLS_DLL_API mclSize blsPublicKeySerialize(void *buf, mclSize maxBufSize, const blsPublicKey *pub);

//Verify if public key is valid.
var pub3 = UnsafeMutablePointer<blsPublicKey>.allocate(capacity: 200)
blsGetPublicKey(pub3, sec3)
var hexpublic = UnsafeMutablePointer<CChar>.allocate(capacity: 400)
print(pub3.pointee)
print("Public Key Serialize Success: ", blsPublicKeySerialize(hexpublic, 400, pub3))
print(String(cString: hexpublic))
//for i in 0...4 {
//    print(hexpublic[i])
//}
var hex = hexpublic

//let name = withUnsafePointer(to:hex) {
//    String(cString: UnsafePointer($0))
//}

var hexpubpub  = "0491d1b0ecd9bb917989f0e74f0dea0422eac4a873e5e2644f368dffb9a6e20fd6e10c1b77654d067c0618f6e5a7f79a"
var pubpub = UnsafeMutablePointer<blsPublicKey>.allocate(capacity: 200)
print(blsPublicKeyDeserialize(pubpub, &hexpubpub, 200))
print(pubpub.pointee)

//let blah = NSData(bytes: hex, length: 96)
//let d = Data(referencing: blah)
//print(d)
//print(String(data: d))
//print("ASDFASDF")
//print(hex.pointee)
//print(hex[0])
//print("ASDFASDF")

//print(String(cString: hex, encoding: String.Encoding.utf16))


//print(String(cString: hexpublic))
//print(hexpublic[95])

print("\n\n ----END---- \n\n")
var st = UnsafeMutablePointer<CChar>.allocate(capacity: 400)

print("Curve order Length: ", blsGetCurveOrder(st, 400))
print(String(cString: st))

print("Field Order Length: ", blsGetFieldOrder(st, 400))
print(String(cString: st))


print("FR: ", getFRUnit())

//BLS_DLL_API mclSize blsPublicKeyDeserialize(blsPublicKey *pub, const void *buf, mclSize bufSize);

//let pub3 = UnsafeMutablePointer<blsPublicKey>.allocate(capacity: 32)
//var hexpub = UnsafeMutablePointer<CChar>.allocate(capacity: 400)
//
//print("AWEFWEF ", blsSecretKeyDeserialize(sec3,hexpub,32))
//
//
////print(pub3.pointee)
////print(sec3.pointee)
//
//print("Hexpub final pointee   ", String(cString: hexpub))
//
//print(blsPublicKeyGetHexStr(hexpub, 400, pub3))
//print("PUBKEY ", String(cString:hexpub))
//
////int blsGetCurveOrder(char *buf, mclSize maxBufSize);
//
//sec1.deallocate()
//sec2.deallocate()
//sec3.deallocate()
//pub3.deallocate()
//hexpub.deallocate()

////mclSize blsPublicKeyGetHexStr(char *buf, mclSize maxBufSize, const blsPublicKey *pub);
//
//var hexpub = UnsafeMutablePointer<Int8>.allocate(capacity: 400)
//print(blsPublicKeyGetHexStr(hexpub, 400, pub3))
//
//let sss = String(cString: hexpub)
//print(sss.count)
//
//hexpub.deallocate()
//
//
//blsSecretKeySetByCSPRNG(sec1)
//blsSecretKeySetByCSPRNG(sec2)
//
//
//
//let pub1 = UnsafeMutablePointer<blsPublicKey>.allocate(capacity: 32)
//let pub2 = UnsafeMutablePointer<blsPublicKey>.allocate(capacity: 32)
//
//blsGetPublicKey(pub1,sec1)
//blsGetPublicKey(pub2,sec2)
//
////print(pub1.pointee)
////print(pub2.pointee)
//
//let sig1 = UnsafeMutablePointer<blsSignature>.allocate(capacity: 32)
//let sig2 = UnsafeMutablePointer<blsSignature>.allocate(capacity: 32)
//
//var x = "abcd"
//blsSign(sig1, sec1, x, strlen(x))
//blsSign(sig2, sec2, x, strlen(x))
//
////print(sig1.pointee)
////print(sig2.pointee)
//
////BLS_DLL_API void blsSecretKeyAdd(blsSecretKey *sec, const blsSecretKey *rhs);
////BLS_DLL_API void blsPublicKeyAdd(blsPublicKey *pub, const blsPublicKey *rhs);
////BLS_DLL_API void blsSignatureAdd(blsSignature *sig, const blsSignature *rhs);
//
//blsSignatureAdd(sig1, sig2)
//blsPublicKeyAdd(pub1, pub2)
//
////BLS_DLL_API int blsVerify(const blsSignature *sig, const blsPublicKey *pub, const void *m, mclSize size);
//
//var y = "abce"
//let res = blsVerify(sig1, pub1, x, strlen(x))
//
//print(res)
//
////BLS_DLL_API void blsSign(blsSignature *sig, const blsSecretKey *sec, const void *m, mclSize size);
//
//
