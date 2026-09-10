.class public Lcom/sun/mail/util/PropUtil;
.super Ljava/lang/Object;
.source "PropUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static getBoolean(Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "def"    # Z

    .line 175
    if-nez p0, :cond_0

    .line 176
    return p1

    .line 177
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 182
    if-eqz p1, :cond_1

    .line 183
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 185
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 187
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 188
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 189
    :cond_3
    return p1
.end method

.method public static getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 80
    invoke-static {p0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 106
    invoke-virtual {p0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanSystemProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/util/PropUtil;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 128
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    return p1

    .line 131
    :cond_0
    if-eqz p1, :cond_1

    .line 132
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 134
    :cond_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 135
    .end local v0    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "sex":Ljava/lang/SecurityException;
    return p1
.end method

.method private static getInt(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "def"    # I

    .line 158
    if-nez p0, :cond_0

    .line 159
    return p1

    .line 160
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 166
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 167
    :cond_2
    return p1
.end method

.method public static getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 67
    invoke-static {p0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getInt(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 93
    invoke-virtual {p0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/mail/util/PropUtil;->getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sun/mail/util/PropUtil;->getInt(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private static getProp(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 148
    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
