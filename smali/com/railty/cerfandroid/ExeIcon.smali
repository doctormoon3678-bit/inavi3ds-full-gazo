.class final Lcom/railty/cerfandroid/ExeIcon;
.super Ljava/lang/Object;
.source "ExeIcon.java"


# static fields
.field private static final RT_GROUP_ICON:I = 0xe

.field private static final RT_ICON:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Extract([B)Landroid/graphics/Bitmap;
    .locals 17

    .line 36
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v2

    const/16 v3, 0x5a4d

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return-object v4

    .line 37
    :cond_0
    const/16 v2, 0x3c

    invoke-static {v0, v2}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v2

    .line 38
    invoke-static {v0, v2}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v3

    const/16 v5, 0x4550

    if-eq v3, v5, :cond_1

    return-object v4

    .line 39
    :cond_1
    add-int/lit8 v3, v2, 0x6

    invoke-static {v0, v3}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v3

    .line 40
    add-int/lit8 v5, v2, 0x14

    invoke-static {v0, v5}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v5

    .line 41
    add-int/lit8 v2, v2, 0x18

    .line 42
    invoke-static {v0, v2}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v6

    .line 43
    const/16 v7, 0x20b

    if-ne v6, v7, :cond_2

    const/16 v6, 0x70

    goto :goto_0

    :cond_2
    const/16 v6, 0x60

    :goto_0
    add-int/2addr v6, v2

    .line 44
    const/16 v7, 0x10

    add-int/2addr v6, v7

    invoke-static {v0, v6}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v6

    .line 45
    if-nez v6, :cond_3

    return-object v4

    .line 46
    :cond_3
    add-int/2addr v2, v5

    .line 47
    nop

    .line 48
    const/4 v5, -0x1

    move v8, v1

    move v10, v8

    move v9, v5

    :goto_1
    if-ge v8, v3, :cond_5

    .line 49
    mul-int/lit8 v11, v8, 0x28

    add-int/2addr v11, v2

    .line 50
    add-int/lit8 v12, v11, 0xc

    invoke-static {v0, v12}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v12

    add-int/lit8 v13, v11, 0x8

    invoke-static {v0, v13}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v13

    add-int/lit8 v14, v11, 0x10

    invoke-static {v0, v14}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 51
    if-lt v6, v12, :cond_4

    add-int/2addr v13, v12

    if-ge v6, v13, :cond_4

    .line 52
    add-int/lit8 v11, v11, 0x14

    invoke-static {v0, v11}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v9

    sub-int v10, v6, v12

    add-int/2addr v9, v10

    .line 53
    move v10, v6

    .line 48
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 56
    :cond_5
    if-gez v9, :cond_6

    return-object v4

    .line 57
    :cond_6
    nop

    .line 58
    sub-int v2, v9, v10

    .line 60
    const/16 v3, 0xe

    invoke-static {v0, v9, v3}, Lcom/railty/cerfandroid/ExeIcon;->FirstLeaf([BII)[I

    move-result-object v6

    .line 61
    if-nez v6, :cond_7

    return-object v4

    .line 62
    :cond_7
    aget v6, v6, v1

    add-int/2addr v6, v2

    .line 63
    add-int/lit8 v8, v6, 0x4

    invoke-static {v0, v8}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v8

    .line 64
    nop

    .line 65
    move v12, v1

    move v10, v5

    move v11, v10

    :goto_2
    if-ge v12, v8, :cond_c

    .line 66
    add-int/lit8 v13, v6, 0x6

    mul-int/lit8 v14, v12, 0xe

    add-int/2addr v13, v14

    .line 67
    aget-byte v14, v0, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    .line 68
    const/16 v16, 0x100

    if-nez v14, :cond_8

    move/from16 v14, v16

    .line 69
    :cond_8
    if-nez v15, :cond_9

    move/from16 v15, v16

    .line 70
    :cond_9
    add-int/lit8 v13, v13, 0x6

    invoke-static {v0, v13}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v13

    .line 71
    mul-int/2addr v14, v15

    if-gt v14, v10, :cond_a

    if-ne v14, v10, :cond_b

    if-le v13, v11, :cond_b

    .line 72
    :cond_a
    nop

    .line 73
    nop

    .line 74
    move v5, v12

    move v11, v13

    move v10, v14

    .line 65
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 77
    :cond_c
    if-gez v5, :cond_d

    return-object v4

    .line 78
    :cond_d
    const/4 v8, 0x6

    add-int/2addr v6, v8

    mul-int/2addr v5, v3

    add-int/2addr v6, v5

    .line 79
    add-int/lit8 v5, v6, 0xc

    invoke-static {v0, v5}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v5

    .line 80
    const/4 v10, 0x3

    invoke-static {v0, v9, v10, v5}, Lcom/railty/cerfandroid/ExeIcon;->Leaf([BIII)[I

    move-result-object v5

    .line 81
    if-nez v5, :cond_e

    return-object v4

    .line 82
    :cond_e
    aget v9, v5, v1

    add-int/2addr v9, v2

    const/4 v2, 0x1

    aget v5, v5, v2

    .line 84
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    const/16 v11, 0x16

    new-array v12, v11, [B

    .line 86
    const/4 v13, 0x2

    aput-byte v2, v12, v13

    .line 87
    const/4 v13, 0x4

    aput-byte v2, v12, v13

    .line 88
    const/16 v13, 0xc

    invoke-static {v0, v6, v12, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    int-to-byte v6, v5

    aput-byte v6, v12, v3

    .line 90
    shr-int/lit8 v3, v5, 0x8

    int-to-byte v3, v3

    const/16 v6, 0xf

    aput-byte v3, v12, v6

    .line 91
    shr-int/lit8 v3, v5, 0x10

    int-to-byte v3, v3

    aput-byte v3, v12, v7

    .line 92
    shr-int/lit8 v3, v5, 0x18

    int-to-byte v3, v3

    const/16 v6, 0x11

    aput-byte v3, v12, v6

    .line 93
    const/16 v3, 0x12

    aput-byte v11, v12, v3

    .line 94
    invoke-virtual {v10, v12, v1, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 95
    invoke-virtual {v10, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 96
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 97
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    if-nez v0, :cond_f

    return-object v4

    .line 99
    :cond_f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0xc0

    div-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static FirstChild([BII)I
    .locals 2

    .line 137
    add-int/lit8 v0, p2, 0xc

    invoke-static {p0, v0}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0xe

    invoke-static {p0, v1}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 139
    :cond_0
    add-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x4

    invoke-static {p0, p2}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result p0

    .line 140
    const p2, 0x7fffffff

    and-int/2addr p0, p2

    add-int/2addr p1, p0

    return p1
.end method

.method private static FirstLeaf([BII)[I
    .locals 1

    .line 104
    invoke-static {p0, p1, p1, p2}, Lcom/railty/cerfandroid/ExeIcon;->SubDir([BIII)I

    move-result p2

    .line 105
    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 106
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/railty/cerfandroid/ExeIcon;->FirstChild([BII)I

    move-result p2

    .line 107
    if-gez p2, :cond_1

    return-object v0

    .line 108
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/railty/cerfandroid/ExeIcon;->FirstChild([BII)I

    move-result p1

    .line 109
    if-gez p1, :cond_2

    return-object v0

    .line 110
    :cond_2
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result p2

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result p0

    filled-new-array {p2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static Leaf([BIII)[I
    .locals 1

    .line 114
    invoke-static {p0, p1, p1, p2}, Lcom/railty/cerfandroid/ExeIcon;->SubDir([BIII)I

    move-result p2

    .line 115
    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 116
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/railty/cerfandroid/ExeIcon;->SubDir([BIII)I

    move-result p2

    .line 117
    if-gez p2, :cond_1

    return-object v0

    .line 118
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/railty/cerfandroid/ExeIcon;->FirstChild([BII)I

    move-result p1

    .line 119
    if-gez p1, :cond_2

    return-object v0

    .line 120
    :cond_2
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result p2

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result p0

    filled-new-array {p2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method static Load(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6

    .line 21
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v4, 0x4000000

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    .line 26
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    return-object v0

    .line 23
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    .line 24
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 25
    invoke-static {p0}, Lcom/railty/cerfandroid/ExeIcon;->Extract([B)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 25
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 26
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 27
    :goto_1
    return-object v0
.end method

.method private static SubDir([BIII)I
    .locals 6

    .line 124
    add-int/lit8 v0, p2, 0xc

    invoke-static {p0, v0}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0xe

    invoke-static {p0, v1}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v1

    .line 125
    const/4 v2, 0x0

    :goto_0
    add-int v3, v0, v1

    if-ge v2, v3, :cond_1

    .line 126
    add-int/lit8 v3, p2, 0x10

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    .line 127
    invoke-static {p0, v3}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result v4

    .line 128
    const/high16 v5, -0x80000000

    and-int/2addr v5, v4

    if-nez v5, :cond_0

    if-ne v4, p3, :cond_0

    .line 129
    add-int/lit8 v3, v3, 0x4

    invoke-static {p0, v3}, Lcom/railty/cerfandroid/ExeIcon;->U32([BI)I

    move-result p0

    .line 130
    const p2, 0x7fffffff

    and-int/2addr p0, p2

    add-int/2addr p1, p0

    return p1

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static U16([BI)I
    .locals 1

    .line 31
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static U32([BI)I
    .locals 1

    .line 33
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/railty/cerfandroid/ExeIcon;->U16([BI)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method
