.class public final enum Lorg/apache/poi/ss/usermodel/FontFamily;
.super Ljava/lang/Enum;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FontFamily;

.field public static final enum DECORATIVE:Lorg/apache/poi/ss/usermodel/FontFamily;

.field public static final enum MODERN:Lorg/apache/poi/ss/usermodel/FontFamily;

.field public static final enum NOT_APPLICABLE:Lorg/apache/poi/ss/usermodel/FontFamily;

.field public static final enum ROMAN:Lorg/apache/poi/ss/usermodel/FontFamily;

.field public static final enum SCRIPT:Lorg/apache/poi/ss/usermodel/FontFamily;

.field public static final enum SWISS:Lorg/apache/poi/ss/usermodel/FontFamily;

.field private static _table:[Lorg/apache/poi/ss/usermodel/FontFamily;


# instance fields
.field private family:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    const-string v1, "NOT_APPLICABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/ss/usermodel/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->NOT_APPLICABLE:Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    const-string v1, "ROMAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/poi/ss/usermodel/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->ROMAN:Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 31
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    const-string v1, "SWISS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/poi/ss/usermodel/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->SWISS:Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 32
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    const-string v1, "MODERN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/poi/ss/usermodel/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->MODERN:Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 33
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    const-string v1, "SCRIPT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/poi/ss/usermodel/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->SCRIPT:Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 34
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    const-string v1, "DECORATIVE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/poi/ss/usermodel/FontFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->DECORATIVE:Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 27
    const/4 v1, 0x6

    new-array v8, v1, [Lorg/apache/poi/ss/usermodel/FontFamily;

    sget-object v9, Lorg/apache/poi/ss/usermodel/FontFamily;->NOT_APPLICABLE:Lorg/apache/poi/ss/usermodel/FontFamily;

    aput-object v9, v8, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontFamily;->ROMAN:Lorg/apache/poi/ss/usermodel/FontFamily;

    aput-object v2, v8, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontFamily;->SWISS:Lorg/apache/poi/ss/usermodel/FontFamily;

    aput-object v2, v8, v4

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontFamily;->MODERN:Lorg/apache/poi/ss/usermodel/FontFamily;

    aput-object v2, v8, v5

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontFamily;->SCRIPT:Lorg/apache/poi/ss/usermodel/FontFamily;

    aput-object v2, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lorg/apache/poi/ss/usermodel/FontFamily;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 51
    new-array v0, v1, [Lorg/apache/poi/ss/usermodel/FontFamily;

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->_table:[Lorg/apache/poi/ss/usermodel/FontFamily;

    .line 54
    invoke-static {}, Lorg/apache/poi/ss/usermodel/FontFamily;->values()[Lorg/apache/poi/ss/usermodel/FontFamily;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/FontFamily;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 55
    .local v3, "c":Lorg/apache/poi/ss/usermodel/FontFamily;
    sget-object v4, Lorg/apache/poi/ss/usermodel/FontFamily;->_table:[Lorg/apache/poi/ss/usermodel/FontFamily;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FontFamily;->getValue()I

    move-result v5

    aput-object v3, v4, v5

    .line 54
    .end local v3    # "c":Lorg/apache/poi/ss/usermodel/FontFamily;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/FontFamily;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lorg/apache/poi/ss/usermodel/FontFamily;->family:I

    .line 40
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/FontFamily;
    .locals 1
    .param p0, "family"    # I

    .line 60
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->_table:[Lorg/apache/poi/ss/usermodel/FontFamily;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FontFamily;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FontFamily;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FontFamily;
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontFamily;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FontFamily;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/apache/poi/ss/usermodel/FontFamily;->family:I

    return v0
.end method
