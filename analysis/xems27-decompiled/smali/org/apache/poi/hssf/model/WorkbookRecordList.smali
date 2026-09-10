.class public final Lorg/apache/poi/hssf/model/WorkbookRecordList;
.super Ljava/lang/Object;
.source "WorkbookRecordList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/hssf/record/Record;",
        ">;"
    }
.end annotation


# instance fields
.field private backuppos:I

.field private bspos:I

.field private externsheetPos:I

.field private fontpos:I

.field private namepos:I

.field private palettepos:I

.field private protpos:I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private supbookpos:I

.field private tabpos:I

.field private xfpos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    .line 30
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    .line 31
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    .line 32
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    .line 33
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    .line 34
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    .line 35
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    .line 36
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    .line 37
    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    return-void
.end method


# virtual methods
.method public add(ILorg/apache/poi/hssf/record/Record;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 54
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getProtpos()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v0

    if-lt v0, p1, :cond_1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 57
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    .line 58
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v0

    if-lt v0, p1, :cond_3

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 59
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    if-lt v0, p1, :cond_4

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 60
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBackuppos()I

    move-result v0

    if-lt v0, p1, :cond_5

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    .line 61
    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getNamepos()I

    move-result v0

    if-lt v0, p1, :cond_6

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setNamepos(I)V

    .line 62
    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getSupbookpos()I

    move-result v0

    if-lt v0, p1, :cond_7

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setSupbookpos(I)V

    .line 63
    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v0

    if-lt v0, p1, :cond_8

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    .line 64
    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getExternsheetPos()I

    move-result v0

    if-lt v0, p1, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getExternsheetPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setExternsheetPos(I)V

    .line 65
    :cond_9
    return-void
.end method

.method public get(I)Lorg/apache/poi/hssf/record/Record;
    .locals 1
    .param p1, "i"    # I

    .line 50
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    return-object v0
.end method

.method public getBackuppos()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    return v0
.end method

.method public getBspos()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    return v0
.end method

.method public getExternsheetPos()I
    .locals 1

    .line 201
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    return v0
.end method

.method public getFontpos()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    return v0
.end method

.method public getNamepos()I
    .locals 1

    .line 169
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    return v0
.end method

.method public getPalettepos()I
    .locals 1

    .line 156
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    return v0
.end method

.method public getProtpos()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    return-object v0
.end method

.method public getSupbookpos()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    return v0
.end method

.method public getTabpos()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    return v0
.end method

.method public getXfpos()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "pos"    # I

    .line 94
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getProtpos()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setProtpos(I)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBspos()I

    move-result v0

    if-lt v0, p1, :cond_1

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBspos(I)V

    .line 97
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getTabpos()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setTabpos(I)V

    .line 98
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getFontpos()I

    move-result v0

    if-lt v0, p1, :cond_3

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setFontpos(I)V

    .line 99
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getXfpos()I

    move-result v0

    if-lt v0, p1, :cond_4

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setXfpos(I)V

    .line 100
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getBackuppos()I

    move-result v0

    if-lt v0, p1, :cond_5

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setBackuppos(I)V

    .line 101
    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getNamepos()I

    move-result v0

    if-lt v0, p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getNamepos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setNamepos(I)V

    .line 102
    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getSupbookpos()I

    move-result v0

    if-lt v0, p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getSupbookpos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setSupbookpos(I)V

    .line 103
    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getPalettepos()I

    move-result v0

    if-lt v0, p1, :cond_8

    iget v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setPalettepos(I)V

    .line 104
    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getExternsheetPos()I

    move-result v0

    if-lt v0, p1, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getExternsheetPos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->setExternsheetPos(I)V

    .line 105
    :cond_9
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .param p1, "record"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 84
    .local v2, "r":Lorg/apache/poi/hssf/record/Record;
    if-ne v2, p1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->remove(I)V

    .line 86
    goto :goto_1

    .line 88
    :cond_0
    nop

    .end local v2    # "r":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v0, v0, 0x1

    .line 89
    goto :goto_0

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void
.end method

.method public setBackuppos(I)V
    .locals 0
    .param p1, "backuppos"    # I

    .line 152
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->backuppos:I

    .line 153
    return-void
.end method

.method public setBspos(I)V
    .locals 0
    .param p1, "bspos"    # I

    .line 120
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->bspos:I

    .line 121
    return-void
.end method

.method public setExternsheetPos(I)V
    .locals 0
    .param p1, "externsheetPos"    # I

    .line 209
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->externsheetPos:I

    .line 210
    return-void
.end method

.method public setFontpos(I)V
    .locals 0
    .param p1, "fontpos"    # I

    .line 136
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->fontpos:I

    .line 137
    return-void
.end method

.method public setNamepos(I)V
    .locals 0
    .param p1, "namepos"    # I

    .line 185
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->namepos:I

    .line 186
    return-void
.end method

.method public setPalettepos(I)V
    .locals 0
    .param p1, "palettepos"    # I

    .line 160
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->palettepos:I

    .line 161
    return-void
.end method

.method public setProtpos(I)V
    .locals 0
    .param p1, "protpos"    # I

    .line 112
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->protpos:I

    .line 113
    return-void
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    iput-object p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setSupbookpos(I)V
    .locals 0
    .param p1, "supbookpos"    # I

    .line 193
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->supbookpos:I

    .line 194
    return-void
.end method

.method public setTabpos(I)V
    .locals 0
    .param p1, "tabpos"    # I

    .line 128
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->tabpos:I

    .line 129
    return-void
.end method

.method public setXfpos(I)V
    .locals 0
    .param p1, "xfpos"    # I

    .line 144
    iput p1, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->xfpos:I

    .line 145
    return-void
.end method

.method public size()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/poi/hssf/model/WorkbookRecordList;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
