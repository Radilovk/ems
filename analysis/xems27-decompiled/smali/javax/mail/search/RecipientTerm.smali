.class public final Ljavax/mail/search/RecipientTerm;
.super Ljavax/mail/search/AddressTerm;
.source "RecipientTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x5ae1a88c29bef694L


# instance fields
.field private type:Ljavax/mail/Message$RecipientType;


# direct methods
.method public constructor <init>(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    .locals 0
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "address"    # Ljavax/mail/Address;

    .line 70
    invoke-direct {p0, p2}, Ljavax/mail/search/AddressTerm;-><init>(Ljavax/mail/Address;)V

    .line 71
    iput-object p1, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 112
    instance-of v0, p1, Ljavax/mail/search/RecipientTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    return v1

    .line 114
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/RecipientTerm;

    .line 115
    .local v0, "rt":Ljavax/mail/search/RecipientTerm;
    iget-object v2, v0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    iget-object v3, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Ljavax/mail/search/AddressTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getRecipientType()Ljavax/mail/Message$RecipientType;
    .locals 1

    .line 80
    iget-object v0, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget-object v0, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/AddressTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 94
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v1, "recipients":[Ljavax/mail/Address;
    nop

    .line 99
    if-nez v1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 105
    .end local v2    # "i":I
    return v0

    .line 103
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v1, v2

    invoke-super {p0, v3}, Ljavax/mail/search/AddressTerm;->match(Ljavax/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "recipients":[Ljavax/mail/Address;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
