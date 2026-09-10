.class public Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/utils/OKHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpsUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$MyTrustManager;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeTrustManager;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeHostnameVerifier;,
        Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "x0"    # [Ljavax/net/ssl/TrustManager;

    .line 588
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .line 716
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 717
    .local v2, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 718
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 716
    .end local v2    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSslSocketFactory([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;
    .locals 7
    .param p0, "certificates"    # [Ljava/io/InputStream;
    .param p1, "bksFile"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;

    .line 598
    new-instance v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;-><init>()V

    .line 601
    .local v0, "sslParams":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 602
    .local v1, "trustManagers":[Ljavax/net/ssl/TrustManager;
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 603
    .local v2, "keyManagers":[Ljavax/net/ssl/KeyManager;
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 604
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    .line 605
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_0

    .line 607
    new-instance v5, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$MyTrustManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$MyTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    move-object v4, v5

    goto :goto_0

    .line 610
    :cond_0
    new-instance v5, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeTrustManager;

    invoke-direct {v5}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeTrustManager;-><init>()V

    move-object v4, v5

    .line 612
    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 613
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iput-object v5, v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 614
    iput-object v4, v0, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    return-object v0

    .line 622
    .end local v1    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    .end local v3    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 624
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 619
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    .line 621
    .local v1, "e":Ljava/security/KeyManagementException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 616
    .end local v1    # "e":Ljava/security/KeyManagementException;
    :catch_2
    move-exception v1

    .line 618
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 4
    .param p0, "bksFile"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;

    .line 692
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    .line 693
    :cond_0
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 694
    .local v1, "clientKeyStore":Ljava/security/KeyStore;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 695
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 696
    .local v2, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 697
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 709
    .end local v1    # "clientKeyStore":Ljava/security/KeyStore;
    .end local v2    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 707
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 708
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 705
    :catch_2
    move-exception v1

    .line 706
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/cert/CertificateException;
    goto :goto_0

    .line 703
    :catch_3
    move-exception v1

    .line 704
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    goto :goto_0

    .line 701
    :catch_4
    move-exception v1

    .line 702
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 699
    :catch_5
    move-exception v1

    .line 700
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 711
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :goto_0
    nop

    .line 712
    :goto_1
    return-object v0

    .line 692
    :cond_1
    :goto_2
    return-object v0
.end method

.method private static varargs prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .locals 9
    .param p0, "certificates"    # [Ljava/io/InputStream;

    .line 652
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_5

    .line 654
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 655
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 656
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 657
    const/4 v3, 0x0

    .line 658
    .local v3, "index":I
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 659
    .local v6, "certificate":Ljava/io/InputStream;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "certificateAlias":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 662
    if-eqz v6, :cond_1

    .line 663
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 664
    :catch_0
    move-exception v8

    goto :goto_2

    .line 666
    :cond_1
    :goto_1
    nop

    .line 658
    .end local v3    # "certificateAlias":Ljava/lang/String;
    .end local v6    # "certificate":Ljava/io/InputStream;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 668
    .end local v7    # "index":I
    .local v3, "index":I
    :cond_2
    const/4 v4, 0x0

    .line 671
    .local v4, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    move-object v4, v5

    .line 672
    invoke-virtual {v4, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 674
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 676
    .local v0, "trustManagers":[Ljavax/net/ssl/TrustManager;
    return-object v0

    .line 683
    .end local v0    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "index":I
    .end local v4    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 681
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 682
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/KeyStoreException;
    goto :goto_3

    .line 679
    :catch_3
    move-exception v1

    .line 680
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/cert/CertificateException;
    goto :goto_3

    .line 677
    :catch_4
    move-exception v1

    .line 678
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 685
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3
    nop

    .line 686
    :goto_4
    return-object v0

    .line 652
    :cond_3
    :goto_5
    return-object v0
.end method
