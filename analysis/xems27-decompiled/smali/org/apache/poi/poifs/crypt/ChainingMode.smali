.class public final enum Lorg/apache/poi/poifs/crypt/ChainingMode;
.super Ljava/lang/Enum;
.source "ChainingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/ChainingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field public static final enum ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;


# instance fields
.field public final ecmaId:I

.field public final jceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v1, "ecb"

    const/4 v2, 0x0

    const-string v3, "ECB"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 23
    new-instance v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v1, "cbc"

    const-string v3, "CBC"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v3, v5}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 25
    new-instance v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    const-string v1, "cfb"

    const-string v3, "CFB8"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v3, v6}, Lorg/apache/poi/poifs/crypt/ChainingMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 20
    new-array v1, v6, [Lorg/apache/poi/poifs/crypt/ChainingMode;

    sget-object v3, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    aput-object v3, v1, v2

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/poi/poifs/crypt/ChainingMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "jceId"    # Ljava/lang/String;
    .param p4, "ecmaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    .line 31
    iput p4, p0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    .line 20
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/ChainingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method
