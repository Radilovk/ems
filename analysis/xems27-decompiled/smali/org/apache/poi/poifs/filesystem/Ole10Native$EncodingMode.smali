.class final enum Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;
.super Ljava/lang/Enum;
.source "Ole10Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/Ole10Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EncodingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

.field public static final enum compact:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

.field public static final enum parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

.field public static final enum unparsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 58
    new-instance v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    const-string v1, "parsed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 62
    new-instance v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    const-string v1, "unparsed"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->unparsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 66
    new-instance v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    const-string v1, "compact"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->compact:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 54
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    sget-object v5, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->unparsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->$VALUES:[Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->$VALUES:[Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    return-object v0
.end method
