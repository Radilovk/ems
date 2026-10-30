.class public final enum Lcom/icomon/logger/ICLogContentType;
.super Ljava/lang/Enum;
.source "ICLogContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/icomon/logger/ICLogContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/icomon/logger/ICLogContentType;

.field public static final enum kLogContentTypeData:Lcom/icomon/logger/ICLogContentType;

.field public static final enum kLogContentTypeString:Lcom/icomon/logger/ICLogContentType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/icomon/logger/ICLogContentType;

    const-string v1, "kLogContentTypeString"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/icomon/logger/ICLogContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/icomon/logger/ICLogContentType;->kLogContentTypeString:Lcom/icomon/logger/ICLogContentType;

    .line 5
    new-instance v1, Lcom/icomon/logger/ICLogContentType;

    const-string v3, "kLogContentTypeData"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/icomon/logger/ICLogContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/icomon/logger/ICLogContentType;->kLogContentTypeData:Lcom/icomon/logger/ICLogContentType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/icomon/logger/ICLogContentType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/icomon/logger/ICLogContentType;->$VALUES:[Lcom/icomon/logger/ICLogContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/icomon/logger/ICLogContentType;
    .registers 2

    const-class v0, Lcom/icomon/logger/ICLogContentType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/icomon/logger/ICLogContentType;

    return-object p0
.end method

.method public static values()[Lcom/icomon/logger/ICLogContentType;
    .registers 1

    sget-object v0, Lcom/icomon/logger/ICLogContentType;->$VALUES:[Lcom/icomon/logger/ICLogContentType;

    .line 3
    invoke-virtual {v0}, [Lcom/icomon/logger/ICLogContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/icomon/logger/ICLogContentType;

    return-object v0
.end method
