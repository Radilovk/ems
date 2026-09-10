.class public Lorg/apache/poi/ss/util/SheetReferences;
.super Ljava/lang/Object;
.source "SheetReferences.java"


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/ss/util/SheetReferences;->map:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public addSheetReference(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "number"    # I

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/util/SheetReferences;->map:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # I

    .line 43
    iget-object v0, p0, Lorg/apache/poi/ss/util/SheetReferences;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
