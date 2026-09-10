.class final Lorg/apache/poi/ddf/EscherDump$1PropName;
.super Ljava/lang/Object;
.source "EscherDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ddf/EscherDump;->propName(S)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PropName"
.end annotation


# instance fields
.field final _id:I

.field final _name:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/poi/ddf/EscherDump;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 437
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherDump$1PropName;->this$0:Lorg/apache/poi/ddf/EscherDump;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput p2, p0, Lorg/apache/poi/ddf/EscherDump$1PropName;->_id:I

    .line 439
    iput-object p3, p0, Lorg/apache/poi/ddf/EscherDump$1PropName;->_name:Ljava/lang/String;

    .line 440
    return-void
.end method
