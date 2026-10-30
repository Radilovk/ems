.class public final enum Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;
.super Ljava/lang/Enum;
.source "ICStreamBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/common/ICStreamBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICStreamBufferSeek"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

.field public static final enum IC_STREAM_BUFFER_SEEK_BEGIN:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

.field public static final enum IC_STREAM_BUFFER_SEEK_CUR:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

.field public static final enum IC_STREAM_BUFFER_SEEK_END:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 8
    new-instance v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const-string v1, "IC_STREAM_BUFFER_SEEK_BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_BEGIN:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    .line 9
    new-instance v1, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const-string v3, "IC_STREAM_BUFFER_SEEK_CUR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_CUR:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    .line 10
    new-instance v3, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const-string v5, "IC_STREAM_BUFFER_SEEK_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->IC_STREAM_BUFFER_SEEK_END:Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->$VALUES:[Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;
    .registers 2

    const-class v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    return-object p0
.end method

.method public static values()[Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->$VALUES:[Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    .line 7
    invoke-virtual {v0}, [Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;

    return-object v0
.end method
