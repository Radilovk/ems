.class public final Ljavax/mail/search/HeaderTerm;
.super Ljavax/mail/search/StringTerm;
.source "HeaderTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x73c690dfba9d2142L


# instance fields
.field private headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p2}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 111
    instance-of v0, p1, Ljavax/mail/search/HeaderTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 113
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/HeaderTerm;

    .line 115
    .local v0, "ht":Ljavax/mail/search/HeaderTerm;
    iget-object v2, v0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    iget-object v3, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 123
    iget-object v0, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 124
    invoke-super {p0}, Ljavax/mail/search/StringTerm;->hashCode()I

    move-result v1

    .line 123
    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 93
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/search/HeaderTerm;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v1, "headers":[Ljava/lang/String;
    nop

    .line 98
    if-nez v1, :cond_0

    .line 99
    return v0

    .line 101
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 104
    .end local v2    # "i":I
    return v0

    .line 102
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, v1, v2

    invoke-super {p0, v3}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "headers":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
