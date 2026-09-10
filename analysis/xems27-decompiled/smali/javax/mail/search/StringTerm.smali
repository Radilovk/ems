.class public abstract Ljavax/mail/search/StringTerm;
.super Ljavax/mail/search/SearchTerm;
.source "StringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x11ae4e90f062d98dL


# instance fields
.field protected ignoreCase:Z

.field protected pattern:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 75
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 85
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 86
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 87
    iput-boolean p2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p1, Ljavax/mail/search/StringTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    return v1

    .line 124
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/StringTerm;

    .line 125
    .local v0, "st":Ljavax/mail/search/StringTerm;
    iget-boolean v2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-boolean v2, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v2, v4, :cond_1

    .line 126
    return v3

    :cond_1
    return v1

    .line 129
    :cond_2
    iget-object v2, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget-boolean v2, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v2, v4, :cond_3

    .line 129
    return v3

    :cond_3
    return v1
.end method

.method public getIgnoreCase()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 137
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    return v0
.end method

.method protected match(Ljava/lang/String;)Z
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 110
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 115
    .end local v1    # "i":I
    const/4 v1, 0x0

    return v1

    .line 111
    .restart local v1    # "i":I
    :cond_0
    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 112
    iget-object v5, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 111
    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    .line 112
    if-eqz v2, :cond_1

    .line 113
    const/4 v2, 0x1

    return v2

    .line 110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
