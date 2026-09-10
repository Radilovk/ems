.class public Lcom/isaigu/gymapp/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEthernetConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 41
    nop

    .line 42
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 43
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/16 v2, 0x9

    .line 44
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 45
    .local v2, "mMobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 49
    .end local v1    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "mMobileNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    return v0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 28
    nop

    .line 29
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 30
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    nop

    .line 31
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 32
    .local v2, "mMobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 36
    .end local v1    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "mMobileNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isEthernetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/NetworkUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 13
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 14
    nop

    .line 15
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 16
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    nop

    .line 17
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 18
    .local v3, "mWiFiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 22
    .end local v1    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "mWiFiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    return v0
.end method
