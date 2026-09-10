.class public final enum Lcom/clj/fastble/data/BleScanState;
.super Ljava/lang/Enum;
.source "BleScanState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/clj/fastble/data/BleScanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/clj/fastble/data/BleScanState;

.field public static final enum STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

.field public static final enum STATE_SCANNING:Lcom/clj/fastble/data/BleScanState;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/clj/fastble/data/BleScanState;

    const-string v1, "STATE_IDLE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/clj/fastble/data/BleScanState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    .line 7
    new-instance v0, Lcom/clj/fastble/data/BleScanState;

    const-string v1, "STATE_SCANNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/clj/fastble/data/BleScanState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/clj/fastble/data/BleScanState;->STATE_SCANNING:Lcom/clj/fastble/data/BleScanState;

    .line 4
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/clj/fastble/data/BleScanState;

    sget-object v4, Lcom/clj/fastble/data/BleScanState;->STATE_IDLE:Lcom/clj/fastble/data/BleScanState;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/clj/fastble/data/BleScanState;->$VALUES:[Lcom/clj/fastble/data/BleScanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/clj/fastble/data/BleScanState;->code:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clj/fastble/data/BleScanState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/clj/fastble/data/BleScanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/data/BleScanState;

    return-object v0
.end method

.method public static values()[Lcom/clj/fastble/data/BleScanState;
    .locals 1

    .line 4
    sget-object v0, Lcom/clj/fastble/data/BleScanState;->$VALUES:[Lcom/clj/fastble/data/BleScanState;

    invoke-virtual {v0}, [Lcom/clj/fastble/data/BleScanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/clj/fastble/data/BleScanState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/clj/fastble/data/BleScanState;->code:I

    return v0
.end method
