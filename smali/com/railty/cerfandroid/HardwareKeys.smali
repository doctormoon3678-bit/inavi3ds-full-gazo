.class final Lcom/railty/cerfandroid/HardwareKeys;
.super Ljava/lang/Object;
.source "HardwareKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/HardwareKeys$Sink;
    }
.end annotation


# instance fields
.field private final sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

.field private stickX:I

.field private stickY:I


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/HardwareKeys$Sink;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    return-void
.end method

.method private Axis(IFII)I
    .locals 3

    .line 47
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v2

    .line 48
    :goto_0
    if-ne p2, p1, :cond_2

    return p1

    .line 49
    :cond_2
    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    invoke-interface {v0, p3, v1}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 50
    :cond_3
    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    invoke-interface {p1, p4, v1}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 51
    :cond_4
    if-gez p2, :cond_5

    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    invoke-interface {p1, p3, v2}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 52
    :cond_5
    if-lez p2, :cond_6

    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    invoke-interface {p1, p4, v2}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 53
    :cond_6
    return p2
.end method

.method private static IsExternal(Landroid/view/InputDevice;)Z
    .locals 4

    .line 57
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    .line 59
    const/16 v2, 0x401

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method private static Vk(I)I
    .locals 9

    .line 64
    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    const/16 v1, 0x36

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    return p0

    .line 65
    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x7

    if-lt p0, v1, :cond_1

    if-gt p0, v0, :cond_1

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x30

    return p0

    .line 66
    :cond_1
    const/16 v1, 0x70

    const/16 v2, 0x83

    if-lt p0, v2, :cond_2

    const/16 v3, 0x8e

    if-gt p0, v3, :cond_2

    sub-int/2addr p0, v2

    add-int/2addr p0, v1

    return p0

    .line 67
    :cond_2
    const/16 v2, 0x90

    if-lt p0, v2, :cond_3

    const/16 v3, 0x99

    if-gt p0, v3, :cond_3

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x60

    return p0

    .line 68
    :cond_3
    const/16 v2, 0x22

    const/16 v3, 0x21

    const/16 v4, 0x20

    const/16 v5, 0x9

    const/16 v6, 0x15

    const/16 v7, 0x1b

    const/16 v8, 0xd

    sparse-switch p0, :sswitch_data_0

    .line 110
    const/4 p0, 0x0

    return p0

    .line 85
    :sswitch_0
    return v6

    .line 90
    :sswitch_1
    const/16 p0, 0x2d

    return p0

    .line 87
    :sswitch_2
    const/16 p0, 0x23

    return p0

    .line 86
    :sswitch_3
    const/16 p0, 0x24

    return p0

    .line 84
    :sswitch_4
    const/16 p0, 0x14

    return p0

    .line 81
    :sswitch_5
    const/16 p0, 0x11

    return p0

    .line 71
    :sswitch_6
    const/16 p0, 0x2e

    return p0

    .line 74
    :sswitch_7
    return v7

    .line 107
    :sswitch_8
    const/16 p0, 0x71

    return p0

    .line 106
    :sswitch_9
    return v1

    .line 109
    :sswitch_a
    return v2

    .line 108
    :sswitch_b
    return v3

    .line 105
    :sswitch_c
    return v5

    .line 104
    :sswitch_d
    return v4

    .line 102
    :sswitch_e
    return v8

    .line 89
    :sswitch_f
    return v2

    .line 88
    :sswitch_10
    return v3

    .line 96
    :sswitch_11
    const/16 p0, 0xbf

    return p0

    .line 101
    :sswitch_12
    const/16 p0, 0xde

    return p0

    .line 95
    :sswitch_13
    const/16 p0, 0xba

    return p0

    .line 99
    :sswitch_14
    const/16 p0, 0xdc

    return p0

    .line 100
    :sswitch_15
    const/16 p0, 0xdd

    return p0

    .line 98
    :sswitch_16
    const/16 p0, 0xdb

    return p0

    .line 94
    :sswitch_17
    const/16 p0, 0xbb

    return p0

    .line 93
    :sswitch_18
    const/16 p0, 0xbd

    return p0

    .line 97
    :sswitch_19
    const/16 p0, 0xc0

    return p0

    .line 70
    :sswitch_1a
    const/16 p0, 0x8

    return p0

    .line 69
    :sswitch_1b
    return v8

    .line 73
    :sswitch_1c
    return v4

    .line 72
    :sswitch_1d
    return v5

    .line 80
    :sswitch_1e
    return v0

    .line 83
    :sswitch_1f
    return v6

    .line 82
    :sswitch_20
    const/16 p0, 0x12

    return p0

    .line 92
    :sswitch_21
    const/16 p0, 0xbe

    return p0

    .line 91
    :sswitch_22
    const/16 p0, 0xbc

    return p0

    .line 79
    :sswitch_23
    return v8

    .line 77
    :sswitch_24
    const/16 p0, 0x27

    return p0

    .line 75
    :sswitch_25
    const/16 p0, 0x25

    return p0

    .line 78
    :sswitch_26
    const/16 p0, 0x28

    return p0

    .line 76
    :sswitch_27
    const/16 p0, 0x26

    return p0

    .line 103
    :sswitch_28
    return v7

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_28
        0x13 -> :sswitch_27
        0x14 -> :sswitch_26
        0x15 -> :sswitch_25
        0x16 -> :sswitch_24
        0x17 -> :sswitch_23
        0x37 -> :sswitch_22
        0x38 -> :sswitch_21
        0x39 -> :sswitch_20
        0x3a -> :sswitch_1f
        0x3b -> :sswitch_1e
        0x3c -> :sswitch_1e
        0x3d -> :sswitch_1d
        0x3e -> :sswitch_1c
        0x42 -> :sswitch_1b
        0x43 -> :sswitch_1a
        0x44 -> :sswitch_19
        0x45 -> :sswitch_18
        0x46 -> :sswitch_17
        0x47 -> :sswitch_16
        0x48 -> :sswitch_15
        0x49 -> :sswitch_14
        0x4a -> :sswitch_13
        0x4b -> :sswitch_12
        0x4c -> :sswitch_11
        0x5c -> :sswitch_10
        0x5d -> :sswitch_f
        0x60 -> :sswitch_e
        0x61 -> :sswitch_28
        0x63 -> :sswitch_d
        0x64 -> :sswitch_c
        0x66 -> :sswitch_b
        0x67 -> :sswitch_a
        0x6c -> :sswitch_9
        0x6d -> :sswitch_8
        0x6f -> :sswitch_7
        0x70 -> :sswitch_6
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
        0x73 -> :sswitch_4
        0x7a -> :sswitch_3
        0x7b -> :sswitch_2
        0x7c -> :sswitch_1
        0xa0 -> :sswitch_1b
        0xcc -> :sswitch_0
        0xda -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method OnKey(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/railty/cerfandroid/HardwareKeys;->IsExternal(Landroid/view/InputDevice;)Z

    move-result v0

    .line 18
    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/railty/cerfandroid/HardwareKeys;->Vk(I)I

    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3e

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    const/16 v0, 0x10

    invoke-interface {p1, v0, v4}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 23
    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    const/16 v0, 0x15

    invoke-interface {p1, v0, v1}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 24
    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    invoke-interface {p1, v0, v4}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 26
    :cond_1
    return v4

    .line 28
    :cond_2
    if-nez v0, :cond_3

    return v1

    .line 29
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    invoke-interface {p1, v0, v1}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->sink:Lcom/railty/cerfandroid/HardwareKeys$Sink;

    invoke-interface {p1, v0, v4}, Lcom/railty/cerfandroid/HardwareKeys$Sink;->Key(IZ)V

    .line 31
    :cond_5
    :goto_0
    return v4
.end method

.method OnMotion(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 38
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 40
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    const/4 v3, 0x1

    if-gez v2, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 41
    :cond_2
    iget p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->stickX:I

    const/16 v2, 0x25

    const/16 v4, 0x27

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/railty/cerfandroid/HardwareKeys;->Axis(IFII)I

    move-result p1

    iput p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->stickX:I

    .line 42
    iget p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->stickY:I

    const/16 v0, 0x26

    const/16 v2, 0x28

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/railty/cerfandroid/HardwareKeys;->Axis(IFII)I

    move-result p1

    iput p1, p0, Lcom/railty/cerfandroid/HardwareKeys;->stickY:I

    .line 43
    return v3

    .line 36
    :cond_3
    :goto_0
    return v2
.end method
