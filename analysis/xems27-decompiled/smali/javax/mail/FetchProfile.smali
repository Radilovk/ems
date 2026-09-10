.class public Ljavax/mail/FetchProfile;
.super Ljava/lang/Object;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/FetchProfile$Item;
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Vector;

.field private specials:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    .line 169
    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    .line 170
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    .line 196
    :cond_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public add(Ljavax/mail/FetchProfile$Item;)V
    .locals 1
    .param p1, "item"    # Ljavax/mail/FetchProfile$Item;

    .line 182
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    .line 184
    :cond_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljavax/mail/FetchProfile$Item;)Z
    .locals 1
    .param p1, "item"    # Ljavax/mail/FetchProfile$Item;

    .line 206
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderNames()[Ljava/lang/String;
    .locals 2

    .line 239
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 243
    .local v0, "s":[Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 244
    return-object v0
.end method

.method public getItems()[Ljavax/mail/FetchProfile$Item;
    .locals 2

    .line 225
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    .line 229
    .local v0, "s":[Ljavax/mail/FetchProfile$Item;
    iget-object v1, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 230
    return-object v0
.end method
