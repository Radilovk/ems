.class public Lcom/isaigu/gymapp/utils/MacUtils;
.super Ljava/lang/Object;
.source "MacUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsMac(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    if-eqz p0, :cond_false

    if-eqz p1, :cond_false

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/MacUtils;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/MacUtils;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_false
    const/4 v0, 0x0

    return v0
.end method

.method public static normalizeMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mac"    # Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
