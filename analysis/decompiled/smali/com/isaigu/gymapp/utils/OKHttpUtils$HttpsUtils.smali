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

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "x0"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 588
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 716
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 717
    .local v0, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 718
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 721
    .end local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :goto_1
    return-object v0

    .line 716
    .restart local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSslSocketFactory([Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;
    .locals 8
    .param p0, "certificates"    # [Ljava/io/InputStream;
    .param p1, "bksFile"    # Ljava/io/InputStream;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 598
    new-instance v3, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;

    invoke-direct {v3}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;-><init>()V

    .line 601
    .local v3, "sslParams":Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 602
    .local v5, "trustManagers":[Ljavax/net/ssl/TrustManager;
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 603
    .local v1, "keyManagers":[Ljavax/net/ssl/KeyManager;
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 604
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    .line 605
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v5, :cond_0

    .line 607
    new-instance v4, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$MyTrustManager;

    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v5}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$MyTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 612
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 613
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iput-object v6, v3, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 614
    iput-object v4, v3, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 615
    return-object v3

    .line 610
    :cond_0
    new-instance v4, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeTrustManager;

    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-direct {v4}, Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpsUtils$UnSafeTrustManager;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2

    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 616
    .end local v1    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    .end local v5    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 619
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 621
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 622
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_2
    move-exception v0

    .line 624
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method private static prepareKeyManager(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 5
    .param p0, "bksFile"    # Ljava/io/InputStream;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 692
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-object v3

    .line 693
    :cond_1
    :try_start_0
    const-string v4, "BKS"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 694
    .local v0, "clientKeyStore":Ljava/security/KeyStore;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 695
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 696
    .local v2, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 697
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    goto :goto_0

    .line 699
    .end local v0    # "clientKeyStore":Ljava/security/KeyStore;
    .end local v2    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 701
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    .line 702
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 703
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 704
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    .line 705
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_3
    move-exception v1

    .line 706
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 707
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v1

    .line 708
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 709
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static varargs prepareTrustManager([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .locals 12
    .param p0, "certificates"    # [Ljava/io/InputStream;

    .prologue
    const/4 v8, 0x0

    .line 652
    if-eqz p0, :cond_0

    array-length v9, p0

    if-gtz v9, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-object v8

    .line 654
    :cond_1
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 655
    .local v2, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 656
    .local v6, "keyStore":Ljava/security/KeyStore;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 657
    const/4 v4, 0x0

    .line 658
    .local v4, "index":I
    array-length v10, p0

    const/4 v9, 0x0

    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v0, p0, v9

    .line 659
    .local v0, "certificate":Ljava/io/InputStream;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "certificateAlias":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 662
    if-eqz v0, :cond_2

    .line 663
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 658
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 668
    .end local v0    # "certificate":Ljava/io/InputStream;
    .end local v1    # "certificateAlias":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 671
    .local v7, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 672
    invoke-virtual {v7, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 674
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v8

    .line 676
    .local v8, "trustManagers":[Ljavax/net/ssl/TrustManager;
    goto :goto_0

    .line 677
    .end local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "index":I
    .end local v6    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v3

    .line 678
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 679
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    .line 680
    .local v3, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 681
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v3

    .line 682
    .local v3, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 683
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_3
    move-exception v3

    .line 684
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 664
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "certificate":Ljava/io/InputStream;
    .restart local v1    # "certificateAlias":Ljava/lang/String;
    .restart local v2    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "index":I
    .restart local v6    # "keyStore":Ljava/security/KeyStore;
    :catch_4
    move-exception v11

    goto :goto_2
.end method
