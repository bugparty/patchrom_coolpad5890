.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;

.field private static final sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    .line 50
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 205
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 209
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 212
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 195
    return-void

    .restart local p2
    :cond_0
    move-object p2, p3

    .line 193
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 142
    .local v2, x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    instance-of v3, v2, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v3, :cond_0

    .line 143
    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    move-object v1, v0

    .line 144
    .local v1, trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .parameter "certChain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 118
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad certificate chain"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_1
    array-length v3, p0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 125
    .local v2, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 126
    new-instance v3, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v4, p0, v1

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v3, v2, v1
    :try_end_0
    .catch Lorg/apache/harmony/security/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lorg/apache/harmony/security/asn1/ASN1Exception;
    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/ASN1Exception;->printStackTrace()V

    .line 130
    const/4 v3, 0x0

    .line 132
    .end local v0           #e:Lorg/apache/harmony/security/asn1/ASN1Exception;
    :goto_1
    return-object v3

    :cond_2
    invoke-static {v2, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v3

    goto :goto_1
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .parameter "chain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 162
    aget-object v0, p0, v2

    .line 163
    .local v0, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 164
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "certificate for this site is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v3, p1, v0}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 170
    .local v2, valid:Z
    :cond_1
    if-nez v2, :cond_2

    .line 174
    new-instance v3, Landroid/net/http/SslError;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 185
    :goto_0
    return-object v3

    .line 178
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-interface {v3, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    const/4 v3, 0x0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/security/GeneralSecurityException;
    new-instance v3, Landroid/net/http/SslError;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .parameter "connection"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 81
    .local v1, sslSession:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 89
    .local v0, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 90
    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 102
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0           #peerCertificates:[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 94
    .restart local v0       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    .line 95
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    .line 96
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
