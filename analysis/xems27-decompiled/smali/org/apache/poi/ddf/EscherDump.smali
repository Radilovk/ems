.class public final Lorg/apache/poi/ddf/EscherDump;
.super Ljava/lang/Object;
.source "EscherDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private dec1616(I)Ljava/lang/String;
    .locals 3
    .param p1, "n32"    # I

    .line 744
    const-string v0, ""

    .line 745
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, p1, -0x1

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    return-object v0
.end method

.method private static getBlipType(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .line 736
    invoke-static {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipType(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 780
    const-string v0, "0F 00 00 F0 89 07 00 00 00 00 06 F0 18 00 00 00 05 04 00 00 02 00 00 00 05 00 00 00 01 00 00 00 01 00 00 00 05 00 00 00 4F 00 01 F0 2F 07 00 00 42 00 07 F0 B7 01 00 00 03 04 3F 14 AE 6B 0F 65 B0 48 BF 5E 94 63 80 E8 91 73 FF 00 93 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 8B 01 00 00 3F 14 AE 6B 0F 65 B0 48 BF 5E 94 63 80 E8 91 73 92 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 59 01 00 00 00 FE 78 9C E3 9B C4 00 04 AC 77 D9 2F 32 08 32 FD E7 61 F8 FF 0F C8 FD 05 C5 30 19 10 90 63 90 FA 0F 06 0C 8C 0C 5C 70 19 43 30 EB 0E FB 05 86 85 0C DB 18 58 80 72 8C 70 16 0B 83 05 56 51 29 88 C9 60 D9 69 0C 6C 20 26 23 03 C8 74 B0 A8 0E 03 07 FB 45 56 C7 A2 CC C4 1C 06 66 A0 0D 2C 40 39 5E 86 4C 06 3D A0 4E 10 D0 60 D9 C8 58 CC E8 CF B0 80 61 3A 8A 7E 0D C6 23 AC 4F E0 E2 98 B6 12 2B 06 73 9D 12 E3 52 56 59 F6 08 8A CC 52 66 A3 50 FF 96 2B 94 E9 DF 4C A1 FE 2D 3A 03 AB 9F 81 C2 F0 A3 54 BF 0F 85 EE A7 54 FF 40 FB 7F A0 E3 9F D2 F4 4F 71 FE 19 58 FF 2B 31 7F 67 36 3B 25 4F 99 1B 4E 53 A6 5F 89 25 95 E9 C4 00 C7 83 12 F3 1F 26 35 4A D3 D2 47 0E 0A C3 41 8E C9 8A 52 37 DC 15 A1 D0 0D BC 4C 06 0C 2B 28 2C 13 28 D4 EF 43 61 5A A0 58 3F 85 71 E0 4B 69 9E 64 65 FE 39 C0 E5 22 30 1D 30 27 0E 74 3A 18 60 FD 4A CC B1 2C 13 7D 07 36 2D 2A 31 85 B2 6A 0D 74 1D 1D 22 4D 99 FE 60 0A F5 9B EC 1C 58 FD 67 06 56 3F 38 0D 84 3C A5 30 0E 28 D3 AF C4 A4 CA FA 44 7A 0D 65 6E 60 7F 4D A1 1B 24 58 F7 49 AF A5 CC 0D CC DF 19 FE 03 00 F0 B1 25 4D 42 00 07 F0 E1 01 00 00 03 04 39 50 BE 98 B0 6F 57 24 31 70 5D 23 2F 9F 10 66 FF 00 BD 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 B5 01 00 00 39 50 BE 98 B0 6F 57 24 31 70 5D 23 2F 9F 10 66 DA 03 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 83 01 00 00 00 FE 78 9C A5 52 BF 4B 42 51 14 3E F7 DC 77 7A 16 45 48 8B 3C 48 A8 16 15 0D 6C 88 D0 04 C3 40 A3 32 1C 84 96 08 21 04 A1 C5 5C A2 35 82 C0 35 6A AB 1C 6A 6B A8 24 5A 83 68 08 84 84 96 A2 86 A0 7F C2 86 5E E7 5E F5 41 E4 10 BC 03 1F E7 FB F1 CE B9 F7 F1 9E 7C 05 2E 7A 37 9B E0 45 7B 10 EC 6F 96 5F 1D 74 13 55 7E B0 6C 5D 20 60 C0 49 A2 9A BD 99 4F 50 83 1B 30 38 13 0E 33 60 A6 A7 6B B5 37 EB F4 10 FA 14 15 A0 B6 6B 37 0C 1E B3 49 73 5B A5 C2 26 48 3E C1 E0 6C 08 4A 30 C9 93 AA 02 B8 20 13 62 05 4E E1 E8 D7 7C C0 B8 14 95 5E BE B8 A7 CF 1E BE 55 2C 56 B9 78 DF 08 7E 88 4C 27 FF 7B DB FF 7A DD B7 1A 17 67 34 6A AE BA DA 35 D1 E7 72 BE FE EC 6E FE DA E5 7C 3D EC 7A DE 03 FD 50 06 0B 23 F2 0E F3 B2 A5 11 91 0D 4C B5 B5 F3 BF 94 C1 8F 24 F7 D9 6F 60 94 3B C9 9A F3 1C 6B E7 BB F0 2E 49 B2 25 2B C6 B1 EE 69 EE 15 63 4F 71 7D CE 85 CC C8 35 B9 C3 28 28 CE D0 5C 67 79 F2 4A A2 14 23 A4 38 43 73 9D 2D 69 2F C1 08 31 9F C5 5C 9B EB 7B C5 69 19 B3 B4 81 F3 DC E3 B4 8E 8B CC B3 94 53 5A E7 41 2A 63 9A AA 38 C5 3D 48 BB EC 57 59 6F 2B AD 73 1F 1D 60 92 AE 70 8C BB 8F CE 31 C1 3C 49 27 4A EB DC A4 5B 8C D1 0B 0E 73 37 E9 11 A7 99 C7 E8 41 69 B0 7F 00 96 F2 A7 E8 42 00 07 F0 B4 01 00 00 03 04 1A BA F9 D6 A9 B9 3A 03 08 61 E9 90 FF 7B 9E E6 FF 00 90 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 88 01 00 00 1A BA F9 D6 A9 B9 3A 03 08 61 E9 90 FF 7B 9E E6 12 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 56 01 00 00 00 FE 78 9C E3 13 62 00 02 D6 BB EC 17 19 04 99 FE F3 30 FC FF 07 E4 FE 82 62 98 0C 08 C8 31 48 FD 07 03 06 46 06 2E B8 8C 21 98 75 87 FD 02 C3 42 86 6D 0C 2C 40 39 46 38 8B 85 C1 02 AB A8 14 C4 64 B0 EC 34 06 36 10 93 91 01 64 3A 58 54 87 81 83 FD 22 AB 63 51 66 62 0E 03 33 D0 06 16 A0 1C 2F 43 26 83 1E 50 27 08 68 B0 6C 64 2C 66 F4 67 58 C0 30 1D 45 BF 06 E3 11 D6 27 70 71 4C 5B 89 15 83 B9 4E 89 71 29 AB 2C 7B 04 45 66 29 B3 51 A8 7F CB 15 CA F4 6F A6 50 FF 16 9D 81 D5 CF 40 61 F8 51 AA DF 87 42 F7 53 AA 7F A0 FD 3F D0 F1 4F 69 FA A7 38 FF 0C AC FF 95 98 BF 33 9B 9D 92 A7 CC 0D A7 29 D3 AF C4 92 CA 74 62 80 E3 41 89 F9 0F 93 1A A5 69 E9 23 07 85 E1 20 C7 64 45 A9 1B EE 8A 50 E8 06 5E 26 03 86 15 14 96 09 14 EA F7 A1 30 2D 50 AC 9F C2 38 F0 A5 34 4F B2 32 FF 1C E0 72 11 98 0E 98 13 07 38 1D 28 31 C7 B2 4C F4 1D D8 B4 A0 C4 14 CA AA 35 D0 75 64 88 34 65 FA 83 29 D4 6F B2 73 60 F5 9F A1 54 FF 0E CA D3 40 C8 53 0A E3 E0 09 85 6E 50 65 7D 22 BD 86 32 37 B0 BF A6 D0 0D 12 AC FB A4 D7 52 E6 06 E6 EF 0C FF 01 97 1D 12 C7 42 00 07 F0 C3 01 00 00 03 04 BA 4C B6 23 BA 8B 27 BE C8 55 59 86 24 9F 89 D4 FF 00 9F 01 00 00 01 00 00 00 00 00 00 00 00 00 FF FF 20 54 1C F0 97 01 00 00 BA 4C B6 23 BA 8B 27 BE C8 55 59 86 24 9F 89 D4 AE 0E 00 00 00 00 00 00 00 00 00 00 D1 07 00 00 DD 05 00 00 4A AD 6F 00 8A C5 53 00 65 01 00 00 00 FE 78 9C E3 5B C7 00 04 AC 77 D9 2F 32 08 32 FD E7 61 F8 FF 0F C8 FD 05 C5 30 19 10 90 63 90 FA 0F 06 0C 8C 0C 5C 70 19 43 30 EB 0E FB 05 86 85 0C DB 18 58 80 72 8C 70 16 0B 83 05 56 51 29 88 C9 60 D9 69 0C 6C 20 26 23 03 C8 74 B0 A8 0E 03 07 FB 45 56 C7 A2 CC C4 1C 06 66 A0 0D 2C 40 39 5E 86 4C 06 3D A0 4E 10 D0 60 99 C6 B8 98 D1 9F 61 01 C3 74 14 FD 1A 8C 2B D8 84 B1 88 4B A5 A5 75 03 01 50 DF 59 46 77 46 0F A8 3C A6 AB 88 15 83 B9 5E 89 B1 8B D5 97 2D 82 22 B3 94 29 D5 BF E5 CA C0 EA DF AC 43 A1 FD 14 EA 67 A0 30 FC 28 D5 EF 43 A1 FB 7D 87 B8 FF 07 3A FE 07 3A FD 53 EA 7E 0A C3 4F 89 F9 0E 73 EA 69 79 CA DC 70 8A 32 FD 4A 2C 5E 4C DF 87 7A 3C BC E0 A5 30 1E 3E 31 C5 33 AC A0 30 2F 52 A8 DF 87 C2 30 A4 54 3F A5 65 19 85 65 A9 12 D3 2B 16 0D 8A CB 13 4A F3 E3 27 E6 09 03 9D 0E 06 58 BF 12 B3 13 CB C1 01 4E 8B 4A 4C 56 AC 91 03 5D 37 86 48 53 A6 3F 98 42 FD 26 3B 07 56 FF 99 1D 14 EA A7 CC 7E 70 1A 08 79 42 61 1C 3C A5 D0 0D 9C 6C C2 32 6B 29 73 03 DB 6B CA DC C0 F8 97 F5 AD CC 1A CA DC C0 F4 83 32 37 B0 A4 30 CE FC C7 48 99 1B FE 33 32 FC 07 00 6C CC 2E 23 33 00 0B F0 12 00 00 00 BF 00 08 00 08 00 81 01 09 00 00 08 C0 01 40 00 00 08 40 00 1E F1 10 00 00 00 0D 00 00 08 0C 00 00 08 17 00 00 08 F7 00 00 10                                              "

    .line 905
    .local v0, "dump":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/poi/util/HexRead;->readFromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 907
    .local v1, "bytes":[B
    new-instance v2, Lorg/apache/poi/ddf/EscherDump;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherDump;-><init>()V

    .line 910
    .local v2, "dumper":Lorg/apache/poi/ddf/EscherDump;
    array-length v3, v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Lorg/apache/poi/ddf/EscherDump;->dump([BIILjava/io/PrintStream;)V

    .line 912
    return-void
.end method

.method private outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "bytes"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 760
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 769
    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 770
    goto :goto_0

    .line 772
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to output variable of that width"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_1
    invoke-static {p2}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 767
    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 764
    nop

    .line 774
    :goto_0
    return-void
.end method

.method private propName(S)Ljava/lang/String;
    .locals 16
    .param p1, "propertyId"    # S

    .line 443
    move-object/from16 v0, p0

    const/16 v1, 0x112

    new-array v1, v1, [Lorg/apache/poi/ddf/EscherDump$1PropName;

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/4 v3, 0x4

    const-string v4, "transform.rotation"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x77

    const-string v5, "protection.lockrotation"

    invoke-direct {v2, v0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v5, 0x78

    const-string v6, "protection.lockaspectratio"

    invoke-direct {v2, v0, v5, v6}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v6, 0x79

    const-string v7, "protection.lockposition"

    invoke-direct {v2, v0, v6, v7}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/4 v7, 0x3

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v7, 0x7a

    const-string v8, "protection.lockagainstselect"

    invoke-direct {v2, v0, v7, v8}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x7b

    const-string v8, "protection.lockcropping"

    invoke-direct {v2, v0, v3, v8}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v8, 0x7c

    const-string v9, "protection.lockvertices"

    invoke-direct {v2, v0, v8, v9}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v9, 0x7d

    const-string v10, "protection.locktext"

    invoke-direct {v2, v0, v9, v10}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v10, 0x7e

    const-string v11, "protection.lockadjusthandles"

    invoke-direct {v2, v0, v10, v11}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v11, 0x8

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v11, 0x7f

    const-string v12, "protection.lockagainstgrouping"

    invoke-direct {v2, v0, v11, v12}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v12, 0x9

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v12, 0x80

    const-string v13, "text.textid"

    invoke-direct {v2, v0, v12, v13}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v13, 0xa

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v13, 0x81

    const-string v14, "text.textleft"

    invoke-direct {v2, v0, v13, v14}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x82

    const-string v15, "text.texttop"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v15, 0xc

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v15, 0x83

    const-string v14, "text.textright"

    invoke-direct {v2, v0, v15, v14}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0xd

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x84

    const-string v15, "text.textbottom"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v15, 0xe

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v15, 0x85

    const-string v14, "text.wraptext"

    invoke-direct {v2, v0, v15, v14}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0xf

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x86

    const-string v15, "text.scaletext"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v15, 0x10

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v15, 0x87

    const-string v14, "text.anchortext"

    invoke-direct {v2, v0, v15, v14}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x11

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x88

    const-string v15, "text.textflow"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v15, 0x12

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v15, 0x89

    const-string v14, "text.fontrotation"

    invoke-direct {v2, v0, v15, v14}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x13

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x8a

    const-string v15, "text.idofnextshape"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v15, 0x14

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v15, 0x8b

    const-string v14, "text.bidir"

    invoke-direct {v2, v0, v15, v14}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x15

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbb

    const-string v15, "text.singleclickselects"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x16

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbc

    const-string v15, "text.usehostmargins"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x17

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbd

    const-string v15, "text.rotatetextwithshape"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x18

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbe

    const-string v15, "text.sizeshapetofittext"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x19

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xbf

    const-string v15, "text.sizetexttofitshape"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc0

    const-string v15, "geotext.unicode"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x1b

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc1

    const-string v15, "geotext.rtftext"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x1c

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc2

    const-string v15, "geotext.alignmentoncurve"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x1d

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc3

    const-string v15, "geotext.defaultpointsize"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x1e

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc4

    const-string v15, "geotext.textspacing"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x1f

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xc5

    const-string v15, "geotext.fontfamilyname"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x20

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf0

    const-string v15, "geotext.reverseroworder"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x21

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf1

    const-string v15, "geotext.hastexteffect"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x22

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf2

    const-string v15, "geotext.rotatecharacters"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x23

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf3

    const-string v15, "geotext.kerncharacters"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x24

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf4

    const-string v15, "geotext.tightortrack"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x25

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf5

    const-string v15, "geotext.stretchtofitshape"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x26

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf6

    const-string v15, "geotext.charboundingbox"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x27

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf7

    const-string v15, "geotext.scaletextonpath"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x28

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf8

    const-string v15, "geotext.stretchcharheight"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x29

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xf9

    const-string v15, "geotext.nomeasurealongpath"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x2a

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfa

    const-string v15, "geotext.boldfont"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x2b

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfb

    const-string v15, "geotext.italicfont"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x2c

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfc

    const-string v15, "geotext.underlinefont"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x2d

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfd

    const-string v15, "geotext.shadowfont"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x2e

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xfe

    const-string v15, "geotext.smallcapsfont"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x2f

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0xff

    const-string v15, "geotext.strikethroughfont"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x30

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x100

    const-string v15, "blip.cropfromtop"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x31

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x101

    const-string v15, "blip.cropfrombottom"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x32

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x102

    const-string v15, "blip.cropfromleft"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x33

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x103

    const-string v15, "blip.cropfromright"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x34

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x104

    const-string v15, "blip.bliptodisplay"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x35

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x105

    const-string v15, "blip.blipfilename"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x36

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x106

    const-string v15, "blip.blipflags"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x37

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x107

    const-string v15, "blip.transparentcolor"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x38

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x108

    const-string v15, "blip.contrastsetting"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x39

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x109

    const-string v15, "blip.brightnesssetting"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x3a

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10a

    const-string v15, "blip.gamma"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x3b

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10b

    const-string v15, "blip.pictureid"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x3c

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10c

    const-string v15, "blip.doublemod"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x3d

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10d

    const-string v15, "blip.picturefillmod"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x3e

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10e

    const-string v15, "blip.pictureline"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x3f

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x10f

    const-string v15, "blip.printblip"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x40

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x110

    const-string v15, "blip.printblipfilename"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x41

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x111

    const-string v15, "blip.printflags"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x42

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13c

    const-string v15, "blip.nohittestpicture"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x43

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13d

    const-string v15, "blip.picturegray"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x44

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13e

    const-string v15, "blip.picturebilevel"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x45

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x13f

    const-string v15, "blip.pictureactive"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x46

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x140

    const-string v15, "geometry.left"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x47

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x141

    const-string v15, "geometry.top"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x48

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x142

    const-string v15, "geometry.right"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x49

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x143

    const-string v15, "geometry.bottom"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x4a

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x144

    const-string v15, "geometry.shapepath"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x4b

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x145

    const-string v15, "geometry.vertices"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x4c

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x146

    const-string v15, "geometry.segmentinfo"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x4d

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x147

    const-string v15, "geometry.adjustvalue"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x4e

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x148

    const-string v15, "geometry.adjust2value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x4f

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x149

    const-string v15, "geometry.adjust3value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x50

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14a

    const-string v15, "geometry.adjust4value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x51

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14b

    const-string v15, "geometry.adjust5value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x52

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14c

    const-string v15, "geometry.adjust6value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x53

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14d

    const-string v15, "geometry.adjust7value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x54

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14e

    const-string v15, "geometry.adjust8value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x55

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x14f

    const-string v15, "geometry.adjust9value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x56

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x150

    const-string v15, "geometry.adjust10value"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x57

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17a

    const-string v15, "geometry.shadowOK"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x58

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17b

    const-string v15, "geometry.3dok"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x59

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17c

    const-string v15, "geometry.lineok"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x5a

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17d

    const-string v15, "geometry.geotextok"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x5b

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17e

    const-string v15, "geometry.fillshadeshapeok"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x5c

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x17f

    const-string v15, "geometry.fillok"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x5d

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x180

    const-string v15, "fill.filltype"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x5e

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x181

    const-string v15, "fill.fillcolor"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x5f

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x182

    const-string v15, "fill.fillopacity"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x60

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x183

    const-string v15, "fill.fillbackcolor"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x61

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x184

    const-string v15, "fill.backopacity"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x62

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x185

    const-string v15, "fill.crmod"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x63

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x186

    const-string v15, "fill.patterntexture"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x64

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x187

    const-string v15, "fill.blipfilename"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x65

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x188

    const-string v15, "fill.blipflags"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x66

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x189

    const-string v15, "fill.width"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x67

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18a

    const-string v15, "fill.height"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x68

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18b

    const-string v15, "fill.angle"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x69

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18c

    const-string v15, "fill.focus"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x6a

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18d

    const-string v15, "fill.toleft"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x6b

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18e

    const-string v15, "fill.totop"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x6c

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x18f

    const-string v15, "fill.toright"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x6d

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x190

    const-string v15, "fill.tobottom"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x6e

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x191

    const-string v15, "fill.rectleft"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x6f

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x192

    const-string v15, "fill.recttop"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x70

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x193

    const-string v15, "fill.rectright"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x71

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x194

    const-string v15, "fill.rectbottom"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x72

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x195

    const-string v15, "fill.dztype"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x73

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x196

    const-string v15, "fill.shadepreset"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x74

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x197

    const-string v15, "fill.shadecolors"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x75

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x198

    const-string v15, "fill.originx"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v14, 0x76

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v14, 0x199

    const-string v15, "fill.originy"

    invoke-direct {v2, v0, v14, v15}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x19a

    const-string v14, "fill.shapeoriginx"

    invoke-direct {v2, v0, v4, v14}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x19b

    const-string v5, "fill.shapeoriginy"

    invoke-direct {v2, v0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x19c

    const-string v5, "fill.shadetype"

    invoke-direct {v2, v0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v4, 0x1bb

    const-string v5, "fill.filled"

    invoke-direct {v2, v0, v4, v5}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1bc

    const-string v4, "fill.hittestfill"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1bd

    const-string v4, "fill.shape"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1be

    const-string v4, "fill.userect"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1bf

    const-string v4, "fill.nofillhittest"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c0

    const-string v4, "linestyle.color"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c1

    const-string v4, "linestyle.opacity"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c2

    const-string v4, "linestyle.backcolor"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x82

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c3

    const-string v4, "linestyle.crmod"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x83

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c4

    const-string v4, "linestyle.linetype"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x84

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c5

    const-string v4, "linestyle.fillblip"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x85

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c6

    const-string v4, "linestyle.fillblipname"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x86

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c7

    const-string v4, "linestyle.fillblipflags"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x87

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c8

    const-string v4, "linestyle.fillwidth"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x88

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1c9

    const-string v4, "linestyle.fillheight"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x89

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1ca

    const-string v4, "linestyle.filldztype"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x8a

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1cb

    const-string v4, "linestyle.linewidth"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x8b

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1cc

    const-string v4, "linestyle.linemiterlimit"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x8c

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1cd

    const-string v4, "linestyle.linestyle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x8d

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1ce

    const-string v4, "linestyle.linedashing"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1cf

    const-string v4, "linestyle.linedashstyle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x8f

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d0

    const-string v4, "linestyle.linestartarrowhead"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x90

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d1

    const-string v4, "linestyle.lineendarrowhead"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x91

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d2

    const-string v4, "linestyle.linestartarrowwidth"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x92

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d3

    const-string v4, "linestyle.lineestartarrowlength"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x93

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d4

    const-string v4, "linestyle.lineendarrowwidth"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x94

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d5

    const-string v4, "linestyle.lineendarrowlength"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x95

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d6

    const-string v4, "linestyle.linejoinstyle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x96

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1d7

    const-string v4, "linestyle.lineendcapstyle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x97

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1fb

    const-string v4, "linestyle.arrowheadsok"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x98

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1fc

    const-string v4, "linestyle.anyline"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x99

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1fd

    const-string v4, "linestyle.hitlinetest"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x9a

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1fe

    const-string v4, "linestyle.linefillshape"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x9b

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x1ff

    const-string v4, "linestyle.nolinedrawdash"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x9c

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x200

    const-string v4, "shadowstyle.type"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x9d

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x201

    const-string v4, "shadowstyle.color"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x202

    const-string v4, "shadowstyle.highlight"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x203

    const-string v4, "shadowstyle.crmod"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x204

    const-string v4, "shadowstyle.opacity"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x205

    const-string v4, "shadowstyle.offsetx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x206

    const-string v4, "shadowstyle.offsety"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x207

    const-string v4, "shadowstyle.secondoffsetx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x208

    const-string v4, "shadowstyle.secondoffsety"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x209

    const-string v4, "shadowstyle.scalextox"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x20a

    const-string v4, "shadowstyle.scaleytox"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa7

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x20b

    const-string v4, "shadowstyle.scalextoy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa8

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x20c

    const-string v4, "shadowstyle.scaleytoy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xa9

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x20d

    const-string v4, "shadowstyle.perspectivex"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xaa

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x20e

    const-string v4, "shadowstyle.perspectivey"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xab

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x20f

    const-string v4, "shadowstyle.weight"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xac

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x210

    const-string v4, "shadowstyle.originx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xad

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x211

    const-string v4, "shadowstyle.originy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xae

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x23e

    const-string v4, "shadowstyle.shadow"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xaf

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x23f

    const-string v4, "shadowstyle.shadowobsured"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x240

    const-string v4, "perspective.type"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x241

    const-string v4, "perspective.offsetx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x242

    const-string v4, "perspective.offsety"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x243

    const-string v4, "perspective.scalextox"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x244

    const-string v4, "perspective.scaleytox"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x245

    const-string v4, "perspective.scalextoy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x246

    const-string v4, "perspective.scaleytox"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb7

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x247

    const-string v4, "perspective.perspectivex"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb8

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x248

    const-string v4, "perspective.perspectivey"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xb9

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x249

    const-string v4, "perspective.weight"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xba

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x24a

    const-string v4, "perspective.originx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xbb

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x24b

    const-string v4, "perspective.originy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xbc

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x27f

    const-string v4, "perspective.perspectiveon"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xbd

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x280

    const-string v4, "3d.specularamount"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xbe

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x295

    const-string v4, "3d.diffuseamount"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xbf

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x296

    const-string v4, "3d.shininess"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x297

    const-string v4, "3d.edgethickness"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x298

    const-string v4, "3d.extrudeforward"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x299

    const-string v4, "3d.extrudebackward"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x29a

    const-string v4, "3d.extrudeplane"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x29b

    const-string v4, "3d.extrusioncolor"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x288

    const-string v4, "3d.crmod"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2bc

    const-string v4, "3d.3deffect"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc7

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2bd

    const-string v4, "3d.metallic"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc8

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2be

    const-string v4, "3d.useextrusioncolor"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xc9

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2bf

    const-string v4, "3d.lightface"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xca

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c0

    const-string v4, "3dstyle.yrotationangle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xcb

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c1

    const-string v4, "3dstyle.xrotationangle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xcc

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c2

    const-string v4, "3dstyle.rotationaxisx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xcd

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c3

    const-string v4, "3dstyle.rotationaxisy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xce

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c4

    const-string v4, "3dstyle.rotationaxisz"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xcf

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c5

    const-string v4, "3dstyle.rotationangle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c6

    const-string v4, "3dstyle.rotationcenterx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c7

    const-string v4, "3dstyle.rotationcentery"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c8

    const-string v4, "3dstyle.rotationcenterz"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2c9

    const-string v4, "3dstyle.rendermode"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2ca

    const-string v4, "3dstyle.tolerance"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2cb

    const-string v4, "3dstyle.xviewpoint"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2cc

    const-string v4, "3dstyle.yviewpoint"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd7

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2cd

    const-string v4, "3dstyle.zviewpoint"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd8

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2ce

    const-string v4, "3dstyle.originx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xd9

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2cf

    const-string v4, "3dstyle.originy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xda

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d0

    const-string v4, "3dstyle.skewangle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xdb

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d1

    const-string v4, "3dstyle.skewamount"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xdc

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d2

    const-string v4, "3dstyle.ambientintensity"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xdd

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d3

    const-string v4, "3dstyle.keyx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xde

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d4

    const-string v4, "3dstyle.keyy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xdf

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d5

    const-string v4, "3dstyle.keyz"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d6

    const-string v4, "3dstyle.keyintensity"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d7

    const-string v4, "3dstyle.fillx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d8

    const-string v4, "3dstyle.filly"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2d9

    const-string v4, "3dstyle.fillz"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2da

    const-string v4, "3dstyle.fillintensity"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2fb

    const-string v4, "3dstyle.constrainrotation"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2fc

    const-string v4, "3dstyle.rotationcenterauto"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe7

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2fd

    const-string v4, "3dstyle.parallel"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe8

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2fe

    const-string v4, "3dstyle.keyharsh"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xe9

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x2ff

    const-string v4, "3dstyle.fillharsh"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xea

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x301

    const-string v4, "shape.master"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xeb

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x303

    const-string v4, "shape.connectorstyle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xec

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x304

    const-string v4, "shape.blackandwhitesettings"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xed

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x305

    const-string v4, "shape.wmodepurebw"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xee

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x306

    const-string v4, "shape.wmodebw"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xef

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x33a

    const-string v4, "shape.oleicon"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x33b

    const-string v4, "shape.preferrelativeresize"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x33c

    const-string v4, "shape.lockshapetype"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x33e

    const-string v4, "shape.deleteattachedobject"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x33f

    const-string v4, "shape.backgroundshape"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x340

    const-string v4, "callout.callouttype"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x341

    const-string v4, "callout.xycalloutgap"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x342

    const-string v4, "callout.calloutangle"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf7

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x343

    const-string v4, "callout.calloutdroptype"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf8

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x344

    const-string v4, "callout.calloutdropspecified"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xf9

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x345

    const-string v4, "callout.calloutlengthspecified"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xfa

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x379

    const-string v4, "callout.iscallout"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xfb

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x37a

    const-string v4, "callout.calloutaccentbar"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xfc

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x37b

    const-string v4, "callout.callouttextborder"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xfd

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x37c

    const-string v4, "callout.calloutminusx"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xfe

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x37d

    const-string v4, "callout.calloutminusy"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0xff

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x37e

    const-string v4, "callout.dropauto"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x100

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x37f

    const-string v4, "callout.lengthspecified"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x101

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x380

    const-string v4, "groupshape.shapename"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x102

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x381

    const-string v4, "groupshape.description"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x103

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x382

    const-string v4, "groupshape.hyperlink"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x104

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x383

    const-string v4, "groupshape.wrappolygonvertices"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x105

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x384

    const-string v4, "groupshape.wrapdistleft"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x106

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x385

    const-string v4, "groupshape.wrapdisttop"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x107

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x386

    const-string v4, "groupshape.wrapdistright"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x108

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x387

    const-string v4, "groupshape.wrapdistbottom"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x109

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x388

    const-string v4, "groupshape.regroupid"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x10a

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x3b9

    const-string v4, "groupshape.editedwrap"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x10b

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x3ba

    const-string v4, "groupshape.behinddocument"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x10c

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x3bb

    const-string v4, "groupshape.ondblclicknotify"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x10d

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x3bc

    const-string v4, "groupshape.isbutton"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x10e

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x3bd

    const-string v4, "groupshape.1dadjustment"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x10f

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x3be

    const-string v4, "groupshape.hidden"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x110

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/poi/ddf/EscherDump$1PropName;

    const/16 v3, 0x3bf

    const-string v4, "groupshape.print"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/poi/ddf/EscherDump$1PropName;-><init>(Lorg/apache/poi/ddf/EscherDump;ILjava/lang/String;)V

    const/16 v3, 0x111

    aput-object v2, v1, v3

    .line 720
    .local v1, "props":[Lorg/apache/poi/ddf/EscherDump$1PropName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 721
    aget-object v3, v1, v2

    iget v3, v3, Lorg/apache/poi/ddf/EscherDump$1PropName;->_id:I

    move/from16 v4, p1

    if-ne v3, v4, :cond_0

    .line 722
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/apache/poi/ddf/EscherDump$1PropName;->_name:Ljava/lang/String;

    return-object v3

    .line 720
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move/from16 v4, p1

    .line 726
    .end local v2    # "i":I
    const-string v2, "unknown property"

    return-object v2
.end method


# virtual methods
.method public dump(I[BLjava/io/PrintStream;)V
    .locals 1
    .param p1, "recordSize"    # I
    .param p2, "data"    # [B
    .param p3, "out"    # Ljava/io/PrintStream;

    .line 915
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lorg/apache/poi/ddf/EscherDump;->dump([BIILjava/io/PrintStream;)V

    .line 916
    return-void
.end method

.method public dump([BIILjava/io/PrintStream;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "out"    # Ljava/io/PrintStream;

    .line 52
    new-instance v0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {v0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    .line 53
    .local v0, "recordFactory":Lorg/apache/poi/ddf/EscherRecordFactory;
    move v1, p2

    .line 54
    .local v1, "pos":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 56
    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    .line 57
    .local v2, "r":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v3

    .line 58
    .local v3, "bytesRead":I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    add-int/2addr v1, v3

    .line 60
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherRecord;
    .end local v3    # "bytesRead":I
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public dumpOld(JLjava/io/InputStream;Ljava/io/PrintStream;)V
    .locals 20
    .param p1, "maxLength"    # J
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/util/LittleEndian$BufferUnderrunException;
        }
    .end annotation

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-wide/from16 v3, p1

    .line 76
    .local v3, "remainingBytes":J
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v5, "stringBuf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "atEOF":Z
    const/4 v7, 0x0

    .line 82
    :goto_0
    if-nez v6, :cond_17

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-lez v10, :cond_17

    .line 83
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v10

    .line 84
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v10

    .line 85
    .local v10, "options":S
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v11

    .line 86
    .local v11, "recordId":S
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v12

    .line 88
    .local v12, "recordBytesRemaining":I
    const-wide/16 v13, 0x8

    sub-long/2addr v3, v13

    .line 90
    const/16 v13, -0xee9

    const/16 v14, -0xfe8

    const/16 v15, -0xede

    const/16 v8, 0xf

    if-eq v11, v15, :cond_2

    packed-switch v11, :pswitch_data_0

    .local v7, "recordName":Ljava/lang/String;
    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    .line 189
    if-lt v11, v14, :cond_0

    if-gt v11, v13, :cond_0

    .line 190
    const-string v7, "MsofbtBLIP"

    goto/16 :goto_1

    .line 191
    .end local v7    # "recordName":Ljava/lang/String;
    :cond_0
    and-int/lit8 v7, v10, 0xf

    if-ne v7, v8, :cond_1

    .line 192
    const-string v7, "UNKNOWN container"

    .restart local v7    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 194
    .end local v7    # "recordName":Ljava/lang/String;
    :cond_1
    const-string v7, "UNKNOWN ID"

    .restart local v7    # "recordName":Ljava/lang/String;
    goto/16 :goto_1

    .line 126
    :pswitch_0
    const-string v7, "MsofbtColorScheme"

    .line 127
    goto/16 :goto_1

    .line 159
    :pswitch_1
    const-string v7, "MsofbtOleObject"

    .line 160
    goto/16 :goto_1

    .line 108
    :pswitch_2
    const-string v7, "MsofbtSplitMenuColors"

    .line 109
    goto/16 :goto_1

    .line 162
    :pswitch_3
    const-string v7, "MsofbtDeletedPspl"

    .line 163
    goto/16 :goto_1

    .line 105
    :pswitch_4
    const-string v7, "MsofbtColorMRU"

    .line 106
    goto/16 :goto_1

    .line 183
    :pswitch_5
    const-string v7, "MsofbtSelection"

    .line 184
    goto/16 :goto_1

    .line 123
    :pswitch_6
    const-string v7, "MsofbtRegroupItem"

    .line 124
    goto :goto_1

    .line 180
    :pswitch_7
    const-string v7, "MsofbtCalloutRule"

    .line 181
    goto :goto_1

    .line 99
    :pswitch_8
    const-string v7, "MsofbtCLSID"

    .line 100
    goto :goto_1

    .line 177
    :pswitch_9
    const-string v7, "MsofbtClientRule"

    .line 178
    goto :goto_1

    .line 174
    :pswitch_a
    const-string v7, "MsofbtArcRule"

    .line 175
    goto :goto_1

    .line 171
    :pswitch_b
    const-string v7, "MsofbtAlignRule"

    .line 172
    goto :goto_1

    .line 168
    :pswitch_c
    const-string v7, "MsofbtConnectorRule"

    .line 169
    goto :goto_1

    .line 156
    :pswitch_d
    const-string v7, "MsofbtClientData"

    .line 157
    goto :goto_1

    .line 153
    :pswitch_e
    const-string v7, "MsofbtClientAnchor"

    .line 154
    goto :goto_1

    .line 150
    :pswitch_f
    const-string v7, "MsofbtChildAnchor"

    .line 151
    goto :goto_1

    .line 147
    :pswitch_10
    const-string v7, "MsofbtAnchor"

    .line 148
    goto :goto_1

    .line 144
    :pswitch_11
    const-string v7, "MsofbtClientTextbox"

    .line 145
    goto :goto_1

    .line 141
    :pswitch_12
    const-string v7, "MsofbtTextbox"

    .line 142
    goto :goto_1

    .line 102
    :pswitch_13
    const-string v7, "MsofbtOPT"

    .line 103
    goto :goto_1

    .line 138
    :pswitch_14
    const-string v7, "MsofbtSp"

    .line 139
    goto :goto_1

    .line 135
    :pswitch_15
    const-string v7, "MsofbtSpgr"

    .line 136
    goto :goto_1

    .line 120
    :pswitch_16
    const-string v7, "MsofbtDg"

    .line 121
    goto :goto_1

    .line 114
    :pswitch_17
    const-string v7, "MsofbtBSE"

    .line 115
    goto :goto_1

    .line 96
    :pswitch_18
    const-string v7, "MsofbtDgg"

    .line 97
    goto :goto_1

    .line 165
    :pswitch_19
    const-string v7, "MsofbtSolverContainer"

    .line 166
    goto :goto_1

    .line 132
    :pswitch_1a
    const-string v7, "MsofbtSpContainer"

    .line 133
    goto :goto_1

    .line 129
    :pswitch_1b
    const-string v7, "MsofbtSpgrContainer"

    .line 130
    goto :goto_1

    .line 117
    :pswitch_1c
    const-string v7, "MsofbtDgContainer"

    .line 118
    goto :goto_1

    .line 111
    :pswitch_1d
    const-string v7, "MsofbtBstoreContainer"

    .line 112
    goto :goto_1

    .line 93
    .end local v7    # "recordName":Ljava/lang/String;
    :pswitch_1e
    const-string v7, "MsofbtDggContainer"

    .line 94
    .restart local v7    # "recordName":Ljava/lang/String;
    goto :goto_1

    .line 186
    :cond_2
    const-string v7, "MsofbtUDefProp"

    .line 187
    nop

    .line 197
    :goto_1
    const-string v9, "  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-static {v11}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " ["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-static {v10}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const/16 v8, 0x2c

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    invoke-static {v12}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v8, "]  instance: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    shr-int/lit8 v8, v10, 0x4

    int-to-short v8, v8

    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    const/16 v8, -0xff9

    const/16 v9, 0x10

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-ne v11, v8, :cond_3

    const-wide/16 v18, 0x24

    cmp-long v8, v18, v3

    if-gtz v8, :cond_3

    const/16 v8, 0x24

    if-gt v8, v12, :cond_3

    .line 216
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v13, "    btWin32: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 217
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    .line 218
    .local v8, "n8":B
    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-static {v8}, Lorg/apache/poi/ddf/EscherDump;->getBlipType(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v13, "  btMacOS: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v13

    int-to-byte v8, v13

    .line 222
    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-static {v8}, Lorg/apache/poi/ddf/EscherDump;->getBlipType(B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    const-string v13, "    rgbUid:"

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    invoke-static {v1, v2, v14, v9}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 229
    const-string v9, "    tag: "

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 230
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 231
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 232
    const-string v9, "    size: "

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 233
    const/4 v9, 0x4

    invoke-direct {v0, v9, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 234
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 235
    const-string v13, "    cRef: "

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 236
    invoke-direct {v0, v9, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 237
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 238
    const-string v13, "    offs: "

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    invoke-direct {v0, v9, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 240
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 241
    const-string v9, "    usage: "

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 242
    const/4 v13, 0x1

    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 243
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 244
    const-string v9, "    cbName: "

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 245
    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 246
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 247
    const-string v9, "    unused2: "

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 249
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 250
    const-string v9, "    unused3: "

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 251
    invoke-direct {v0, v13, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 252
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 255
    sub-long v3, v3, v18

    .line 257
    const/4 v12, 0x0

    .line 258
    .end local v8    # "n8":B
    move/from16 v17, v6

    goto/16 :goto_9

    .line 208
    :cond_3
    const/4 v13, 0x1

    .line 259
    const/16 v8, -0xff0

    if-ne v11, v8, :cond_4

    const-wide/16 v18, 0x12

    cmp-long v8, v18, v3

    if-gtz v8, :cond_4

    const/16 v8, 0x12

    if-gt v8, v12, :cond_4

    .line 264
    const-string v8, "    Flag: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 265
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 266
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 267
    const-string v8, "    Col1: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 269
    const-string v8, "    dX1: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 270
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 271
    const-string v8, "    Row1: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 272
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 273
    const-string v8, "    dY1: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 274
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 275
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 276
    const-string v8, "    Col2: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 278
    const-string v8, "    dX2: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 280
    const-string v8, "    Row2: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 281
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 282
    const-string v8, "    dY2: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    invoke-direct {v0, v15, v1, v2}, Lorg/apache/poi/ddf/EscherDump;->outHex(ILjava/io/InputStream;Ljava/io/PrintStream;)V

    .line 284
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    .line 286
    sub-long v3, v3, v18

    .line 287
    add-int/lit8 v12, v12, -0x12

    move/from16 v17, v6

    goto/16 :goto_9

    .line 290
    :cond_4
    const/16 v8, -0xff5

    if-eq v11, v8, :cond_a

    const/16 v8, -0xede

    if-ne v11, v8, :cond_5

    move-object/from16 v16, v5

    move/from16 v17, v6

    goto/16 :goto_4

    .line 346
    :cond_5
    const/16 v8, -0xfee

    if-ne v11, v8, :cond_6

    .line 348
    const-string v8, "    Connector rule: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 349
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(I)V

    .line 350
    const-string v8, "    ShapeID A: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 351
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(I)V

    .line 352
    const-string v8, "   ShapeID B: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 353
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(I)V

    .line 354
    const-string v8, "    ShapeID connector: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 355
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(I)V

    .line 356
    const-string v8, "   Connect pt A: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 357
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(I)V

    .line 358
    const-string v8, "   Connect pt B: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 359
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(I)V

    .line 361
    add-int/lit8 v12, v12, -0x18

    .line 362
    const-wide/16 v8, 0x18

    sub-long/2addr v3, v8

    move/from16 v17, v6

    goto/16 :goto_9

    .line 364
    :cond_6
    const/16 v8, -0xfe8

    if-lt v11, v8, :cond_9

    const/16 v8, -0xee9

    if-ge v11, v8, :cond_9

    .line 366
    const-string v8, "    Secondary UID: "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    invoke-static {v1, v2, v14, v9}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Cache of size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Boundary top: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Boundary left: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Boundary width: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Boundary height: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Cache of saved size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Compression Flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Filter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    const-string v8, "    Data (after decompression): "

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    add-int/lit8 v12, v12, -0x32

    .line 381
    const-wide/16 v8, 0x32

    sub-long/2addr v3, v8

    .line 383
    long-to-int v8, v3

    if-le v12, v8, :cond_7

    long-to-int v8, v3

    int-to-short v8, v8

    goto :goto_2

    :cond_7
    int-to-short v8, v12

    .line 386
    .local v8, "nDumpSize":S
    :goto_2
    new-array v9, v8, [B

    .line 387
    .local v9, "buf":[B
    invoke-virtual {v1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 388
    .local v15, "read":I
    :goto_3
    const/4 v13, -0x1

    if-eq v15, v13, :cond_8

    if-ge v15, v8, :cond_8

    .line 389
    array-length v13, v9

    invoke-virtual {v1, v9, v15, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    add-int/2addr v15, v13

    const/4 v13, 0x1

    goto :goto_3

    .line 390
    :cond_8
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 392
    .local v13, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v14, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v14, v13}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 393
    .local v14, "in1":Ljava/io/InputStream;
    move-object/from16 v16, v5

    .end local v5    # "stringBuf":Ljava/lang/StringBuffer;
    .local v16, "stringBuf":Ljava/lang/StringBuffer;
    const/4 v5, -0x1

    .line 394
    .local v5, "bytesToDump":I
    move/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "atEOF":Z
    .local v17, "atEOF":Z
    invoke-static {v14, v2, v6, v5}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 396
    sub-int/2addr v12, v8

    .line 397
    move/from16 v18, v5

    .end local v5    # "bytesToDump":I
    .local v18, "bytesToDump":I
    int-to-long v5, v8

    sub-long/2addr v3, v5

    move-object/from16 v5, v16

    goto/16 :goto_9

    .line 364
    .end local v8    # "nDumpSize":S
    .end local v9    # "buf":[B
    .end local v13    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v14    # "in1":Ljava/io/InputStream;
    .end local v15    # "read":I
    .end local v16    # "stringBuf":Ljava/lang/StringBuffer;
    .end local v17    # "atEOF":Z
    .end local v18    # "bytesToDump":I
    .local v5, "stringBuf":Ljava/lang/StringBuffer;
    .restart local v6    # "atEOF":Z
    :cond_9
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 401
    .end local v5    # "stringBuf":Ljava/lang/StringBuffer;
    .end local v6    # "atEOF":Z
    .restart local v16    # "stringBuf":Ljava/lang/StringBuffer;
    .restart local v17    # "atEOF":Z
    move-object/from16 v5, v16

    goto/16 :goto_9

    .line 290
    .end local v16    # "stringBuf":Ljava/lang/StringBuffer;
    .end local v17    # "atEOF":Z
    .restart local v5    # "stringBuf":Ljava/lang/StringBuffer;
    .restart local v6    # "atEOF":Z
    :cond_a
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 292
    .end local v5    # "stringBuf":Ljava/lang/StringBuffer;
    .end local v6    # "atEOF":Z
    .restart local v16    # "stringBuf":Ljava/lang/StringBuffer;
    .restart local v17    # "atEOF":Z
    :goto_4
    const/4 v5, 0x0

    .line 293
    .local v5, "nComplex":I
    const-string v6, "    PROPID        VALUE"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    :goto_5
    add-int/lit8 v6, v5, 0x6

    if-lt v12, v6, :cond_e

    add-int/lit8 v6, v5, 0x6

    int-to-long v8, v6

    cmp-long v6, v3, v8

    if-ltz v6, :cond_e

    .line 298
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readShort(Ljava/io/InputStream;)S

    move-result v6

    .line 299
    .local v6, "n16":S
    invoke-static/range {p3 .. p3}, Lorg/apache/poi/util/LittleEndian;->readInt(Ljava/io/InputStream;)I

    move-result v8

    .line 301
    .local v8, "n32":I
    add-int/lit8 v12, v12, -0x6

    .line 302
    const-wide/16 v13, 0x6

    sub-long/2addr v3, v13

    .line 303
    const-string v9, "    "

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 304
    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 305
    const-string v9, " ("

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 306
    and-int/lit16 v13, v6, 0x3fff

    .line 307
    .local v13, "propertyId":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 308
    and-int/lit16 v14, v6, -0x8000

    const-string v15, "}"

    move-wide/from16 v18, v3

    .end local v3    # "remainingBytes":J
    .local v18, "remainingBytes":J
    const-string v3, " {"

    if-nez v14, :cond_d

    .line 310
    and-int/lit16 v4, v6, 0x4000

    if-eqz v4, :cond_b

    .line 311
    const-string v4, ", fBlipID"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 312
    :cond_b
    const-string v4, ")  "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 314
    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 316
    and-int/lit16 v4, v6, 0x4000

    if-nez v4, :cond_c

    .line 318
    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    invoke-direct {v0, v8}, Lorg/apache/poi/ddf/EscherDump;->dec1616(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 320
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(C)V

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-short v3, v13

    invoke-direct {v0, v3}, Lorg/apache/poi/ddf/EscherDump;->propName(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 323
    :cond_c
    invoke-virtual/range {p4 .. p4}, Ljava/io/PrintStream;->println()V

    goto :goto_6

    .line 327
    :cond_d
    const-string v4, ", fComplex)  "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 328
    invoke-static {v8}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 329
    const-string v4, " - Complex prop len"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-short v3, v13

    invoke-direct {v0, v3}, Lorg/apache/poi/ddf/EscherDump;->propName(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    add-int/2addr v5, v8

    .line 335
    .end local v6    # "n16":S
    .end local v8    # "n32":I
    .end local v13    # "propertyId":I
    :goto_6
    move-wide/from16 v3, v18

    goto/16 :goto_5

    .line 337
    .end local v18    # "remainingBytes":J
    .restart local v3    # "remainingBytes":J
    :cond_e
    :goto_7
    int-to-long v8, v5

    and-long/2addr v8, v3

    const-wide/16 v13, 0x0

    cmp-long v6, v8, v13

    if-lez v6, :cond_10

    .line 339
    long-to-int v6, v3

    if-le v5, v6, :cond_f

    long-to-int v6, v3

    int-to-short v6, v6

    goto :goto_8

    :cond_f
    int-to-short v6, v5

    .line 340
    .local v6, "nDumpSize":S
    :goto_8
    const/4 v8, 0x0

    invoke-static {v1, v2, v8, v6}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 341
    sub-int/2addr v5, v6

    .line 342
    sub-int/2addr v12, v6

    .line 343
    int-to-long v8, v6

    sub-long/2addr v3, v8

    goto :goto_7

    .line 345
    .end local v5    # "nComplex":I
    .end local v6    # "nDumpSize":S
    :cond_10
    move-object/from16 v5, v16

    .line 401
    .end local v16    # "stringBuf":Ljava/lang/StringBuffer;
    .local v5, "stringBuf":Ljava/lang/StringBuffer;
    :goto_9
    and-int/lit8 v6, v10, 0xf

    const/16 v8, 0xf

    if-ne v6, v8, :cond_11

    const/4 v13, 0x1

    goto :goto_a

    :cond_11
    const/4 v13, 0x0

    :goto_a
    move v6, v13

    .line 402
    .local v6, "isContainer":Z
    if-eqz v6, :cond_13

    const-wide/16 v8, 0x0

    cmp-long v13, v3, v8

    if-ltz v13, :cond_13

    .line 404
    long-to-int v8, v3

    if-gt v12, v8, :cond_12

    .line 405
    const-string v8, "            completed within"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 407
    :cond_12
    const-string v8, "            continued elsewhere"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 409
    :cond_13
    const-wide/16 v8, 0x0

    cmp-long v13, v3, v8

    if-ltz v13, :cond_15

    .line 412
    long-to-int v8, v3

    if-le v12, v8, :cond_14

    long-to-int v8, v3

    int-to-short v8, v8

    goto :goto_b

    :cond_14
    int-to-short v8, v12

    .line 414
    .local v8, "nDumpSize":S
    :goto_b
    if-eqz v8, :cond_16

    .line 416
    const/4 v9, 0x0

    invoke-static {v1, v2, v9, v8}, Lorg/apache/poi/util/HexDump;->dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V

    .line 417
    int-to-long v13, v8

    sub-long/2addr v3, v13

    goto :goto_c

    .line 421
    .end local v8    # "nDumpSize":S
    :cond_15
    const-string v8, " >> OVERRUN <<"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 422
    .end local v6    # "isContainer":Z
    :cond_16
    :goto_c
    move/from16 v6, v17

    goto/16 :goto_0

    .line 82
    .end local v7    # "recordName":Ljava/lang/String;
    .end local v10    # "options":S
    .end local v11    # "recordId":S
    .end local v12    # "recordBytesRemaining":I
    .end local v17    # "atEOF":Z
    .local v6, "atEOF":Z
    :cond_17
    move/from16 v17, v6

    .line 424
    .end local v6    # "atEOF":Z
    .restart local v17    # "atEOF":Z
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1000
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xee8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0xee3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
