.class public Lcom/isaigu/gymapp/bean/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field public static final chinese:Ljava/lang/String; = "zh"

.field public static final english:Ljava/lang/String; = "en"

.field public static final espanol:Ljava/lang/String; = "es"

.field public static final french:Ljava/lang/String; = "fr"

.field private static instance:Lcom/isaigu/gymapp/bean/UserData; = null

.field public static final poland:Ljava/lang/String; = "pl"

.field public static final portugus:Ljava/lang/String; = "pt"

.field public static final russia:Ljava/lang/String; = "ru"


# instance fields
.field public autoLogin:Z

.field public language:Ljava/lang/String;

.field public leftMode:Z

.field public light:I

.field public logoPath:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public rememberPassword:Z

.field public roleName:Ljava/lang/String;

.field public useTime:J

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/isaigu/gymapp/bean/UserData;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/UserData;

    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 43
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/isaigu/gymapp/bean/UserData;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/UserData;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 48
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    const-string v1, "bg"

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 52
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/bean/UserData;->instance:Lcom/isaigu/gymapp/bean/UserData;

    return-object v0
.end method


# virtual methods
.method public isLogin()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/UserData;->autoLogin:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
