.class Lorg/apache/poi/ss/format/CellTextFormatter$1;
.super Ljava/lang/Object;
.source "CellTextFormatter.java"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/format/CellTextFormatter;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ss/format/CellTextFormatter;

.field final synthetic val$numPlaces:[I


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/format/CellTextFormatter;[I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellTextFormatter$1;->this$0:Lorg/apache/poi/ss/format/CellTextFormatter;

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellTextFormatter$1;->val$numPlaces:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "desc"    # Ljava/lang/StringBuffer;

    .line 43
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellTextFormatter$1;->val$numPlaces:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 45
    const-string v0, "\u0000"

    return-object v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
