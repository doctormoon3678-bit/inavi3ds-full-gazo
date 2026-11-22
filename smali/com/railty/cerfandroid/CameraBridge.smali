.class final Lcom/railty/cerfandroid/CameraBridge;
.super Ljava/lang/Object;
.source "CameraBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/CameraBridge$Sink;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CERF-Camera"

.field private static final kHeight:I = 0xf0

.field private static final kWidth:I = 0x140


# instance fields
.field private final context:Landroid/content/Context;

.field private device:Landroid/hardware/camera2/CameraDevice;

.field private handler:Landroid/os/Handler;

.field private reader:Landroid/media/ImageReader;

.field private rgb:[I

.field private rotated:[I

.field private sensorOrientation:I

.field private session:Landroid/hardware/camera2/CameraCaptureSession;

.field private final sink:Lcom/railty/cerfandroid/CameraBridge$Sink;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/railty/cerfandroid/CameraBridge$Sink;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/railty/cerfandroid/CameraBridge;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/railty/cerfandroid/CameraBridge;->sink:Lcom/railty/cerfandroid/CameraBridge$Sink;

    .line 40
    return-void
.end method

.method private Deliver(Landroid/media/ImageReader;)V
    .locals 18

    .line 113
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    .line 114
    if-nez v2, :cond_0

    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 117
    iget-object v4, v1, Lcom/railty/cerfandroid/CameraBridge;->rgb:[I

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/railty/cerfandroid/CameraBridge;->rgb:[I

    array-length v4, v4

    mul-int v5, v0, v3

    if-eq v4, v5, :cond_2

    :cond_1
    mul-int v4, v0, v3

    new-array v4, v4, [I

    iput-object v4, v1, Lcom/railty/cerfandroid/CameraBridge;->rgb:[I

    .line 118
    :cond_2
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 119
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v8, v4, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 120
    aget-object v10, v4, v5

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aget-object v11, v4, v7

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    .line 121
    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_a

    .line 122
    move v12, v5

    :goto_1
    if-ge v12, v0, :cond_9

    .line 123
    mul-int v13, v7, v10

    add-int/2addr v13, v12

    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0xff

    and-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x10

    .line 124
    div-int/lit8 v15, v7, 0x2

    mul-int/2addr v15, v11

    div-int/lit8 v16, v12, 0x2

    mul-int v16, v16, v4

    add-int v15, v15, v16

    .line 125
    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/2addr v5, v14

    add-int/lit8 v5, v5, -0x80

    .line 126
    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    and-int/2addr v15, v14

    add-int/lit8 v15, v15, -0x80

    .line 127
    mul-int/lit16 v13, v13, 0x12a

    mul-int/lit16 v14, v15, 0x199

    add-int/2addr v14, v13

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    .line 128
    mul-int/lit8 v17, v5, 0x64

    sub-int v17, v13, v17

    mul-int/lit16 v15, v15, 0xd0

    sub-int v15, v17, v15

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    .line 129
    mul-int/lit16 v5, v5, 0x204

    add-int/2addr v13, v5

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v5, v13, 0x8

    .line 130
    const/16 v13, 0xff

    if-gez v14, :cond_3

    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    if-le v14, v13, :cond_4

    move v14, v13

    .line 131
    :cond_4
    :goto_2
    if-gez v15, :cond_5

    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    if-le v15, v13, :cond_6

    move v15, v13

    .line 132
    :cond_6
    :goto_3
    if-gez v5, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    if-le v5, v13, :cond_8

    move v5, v13

    .line 133
    :cond_8
    :goto_4
    iget-object v13, v1, Lcom/railty/cerfandroid/CameraBridge;->rgb:[I

    mul-int v16, v7, v0

    add-int v16, v16, v12

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v14

    aput v5, v13, v16

    .line 122
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_1

    .line 121
    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 136
    :cond_a
    invoke-direct {v1}, Lcom/railty/cerfandroid/CameraBridge;->Rotation()I

    move-result v4

    .line 137
    if-nez v4, :cond_b

    .line 138
    iget-object v4, v1, Lcom/railty/cerfandroid/CameraBridge;->sink:Lcom/railty/cerfandroid/CameraBridge$Sink;

    iget-object v5, v1, Lcom/railty/cerfandroid/CameraBridge;->rgb:[I

    invoke-interface {v4, v5, v0, v3}, Lcom/railty/cerfandroid/CameraBridge$Sink;->Frame([III)V

    goto :goto_a

    .line 140
    :cond_b
    const/16 v5, 0xb4

    if-ne v4, v5, :cond_c

    move v6, v0

    goto :goto_5

    :cond_c
    move v6, v3

    :goto_5
    if-ne v4, v5, :cond_d

    move v7, v3

    goto :goto_6

    :cond_d
    move v7, v0

    .line 141
    :goto_6
    iget-object v8, v1, Lcom/railty/cerfandroid/CameraBridge;->rotated:[I

    if-eqz v8, :cond_e

    iget-object v8, v1, Lcom/railty/cerfandroid/CameraBridge;->rotated:[I

    array-length v8, v8

    mul-int v9, v0, v3

    if-eq v8, v9, :cond_f

    :cond_e
    mul-int v8, v0, v3

    new-array v8, v8, [I

    iput-object v8, v1, Lcom/railty/cerfandroid/CameraBridge;->rotated:[I

    .line 142
    :cond_f
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_13

    .line 143
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v0, :cond_12

    .line 145
    const/16 v10, 0x5a

    if-ne v4, v10, :cond_10

    add-int/lit8 v10, v3, -0x1

    sub-int/2addr v10, v8

    move v11, v9

    goto :goto_9

    .line 146
    :cond_10
    if-ne v4, v5, :cond_11

    add-int/lit8 v10, v0, -0x1

    sub-int/2addr v10, v9

    add-int/lit8 v11, v3, -0x1

    sub-int/2addr v11, v8

    goto :goto_9

    .line 147
    :cond_11
    add-int/lit8 v10, v0, -0x1

    sub-int v11, v10, v9

    move v10, v8

    .line 148
    :goto_9
    iget-object v12, v1, Lcom/railty/cerfandroid/CameraBridge;->rotated:[I

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    iget-object v10, v1, Lcom/railty/cerfandroid/CameraBridge;->rgb:[I

    mul-int v13, v8, v0

    add-int/2addr v13, v9

    aget v10, v10, v13

    aput v10, v12, v11

    .line 143
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 142
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 151
    :cond_13
    iget-object v0, v1, Lcom/railty/cerfandroid/CameraBridge;->sink:Lcom/railty/cerfandroid/CameraBridge$Sink;

    iget-object v3, v1, Lcom/railty/cerfandroid/CameraBridge;->rotated:[I

    invoke-interface {v0, v3, v6, v7}, Lcom/railty/cerfandroid/CameraBridge$Sink;->Frame([III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_a
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 155
    nop

    .line 156
    return-void

    .line 154
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 155
    throw v0
.end method

.method private Rotation()I
    .locals 2

    .line 159
    nop

    .line 160
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 161
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    goto :goto_0

    .line 165
    :pswitch_0
    const/16 v1, 0x10e

    goto :goto_0

    .line 164
    :pswitch_1
    const/16 v1, 0xb4

    goto :goto_0

    .line 163
    :pswitch_2
    const/16 v1, 0x5a

    .line 169
    :cond_0
    :goto_0
    iget v0, p0, Lcom/railty/cerfandroid/CameraBridge;->sensorOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private StartSession()V
    .locals 4

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->device:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->reader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/railty/cerfandroid/CameraBridge$3;

    invoke-direct {v2, p0}, Lcom/railty/cerfandroid/CameraBridge$3;-><init>(Lcom/railty/cerfandroid/CameraBridge;)V

    iget-object v3, p0, Lcom/railty/cerfandroid/CameraBridge;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera session error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CERF-Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/railty/cerfandroid/CameraBridge;Landroid/media/ImageReader;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/CameraBridge;->Deliver(Landroid/media/ImageReader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/railty/cerfandroid/CameraBridge;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/railty/cerfandroid/CameraBridge;->device:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$102(Lcom/railty/cerfandroid/CameraBridge;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/railty/cerfandroid/CameraBridge;->device:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/railty/cerfandroid/CameraBridge;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/railty/cerfandroid/CameraBridge;->StartSession()V

    return-void
.end method

.method static synthetic access$302(Lcom/railty/cerfandroid/CameraBridge;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/railty/cerfandroid/CameraBridge;->session:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/railty/cerfandroid/CameraBridge;)Landroid/media/ImageReader;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/railty/cerfandroid/CameraBridge;->reader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$500(Lcom/railty/cerfandroid/CameraBridge;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/railty/cerfandroid/CameraBridge;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method Running()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Start()V
    .locals 10

    .line 45
    const-string v0, "CERF-Camera"

    iget-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->context:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 47
    if-nez v1, :cond_1

    return-void

    .line 48
    :cond_1
    nop

    .line 50
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_5

    aget-object v7, v2, v6

    .line 51
    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 52
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 53
    nop

    .line 54
    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 55
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_2
    iput v4, p0, Lcom/railty/cerfandroid/CameraBridge;->sensorOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 56
    move-object v5, v7

    goto :goto_1

    .line 58
    :cond_3
    if-nez v5, :cond_4

    move-object v5, v7

    .line 50
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 63
    :cond_5
    :goto_1
    nop

    .line 64
    if-nez v5, :cond_6

    return-void

    .line 65
    :cond_6
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CerfCamera"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    .line 66
    iget-object v2, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/railty/cerfandroid/CameraBridge;->handler:Landroid/os/Handler;

    .line 68
    const/16 v2, 0x23

    const/4 v3, 0x2

    const/16 v4, 0x140

    const/16 v6, 0xf0

    invoke-static {v4, v6, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, p0, Lcom/railty/cerfandroid/CameraBridge;->reader:Landroid/media/ImageReader;

    .line 69
    iget-object v2, p0, Lcom/railty/cerfandroid/CameraBridge;->reader:Landroid/media/ImageReader;

    new-instance v3, Lcom/railty/cerfandroid/CameraBridge$1;

    invoke-direct {v3, p0}, Lcom/railty/cerfandroid/CameraBridge$1;-><init>(Lcom/railty/cerfandroid/CameraBridge;)V

    iget-object v4, p0, Lcom/railty/cerfandroid/CameraBridge;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 73
    :try_start_1
    new-instance v2, Lcom/railty/cerfandroid/CameraBridge$2;

    invoke-direct {v2, p0}, Lcom/railty/cerfandroid/CameraBridge$2;-><init>(Lcom/railty/cerfandroid/CameraBridge;)V

    iget-object v3, p0, Lcom/railty/cerfandroid/CameraBridge;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " opening"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    goto :goto_3

    .line 82
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 84
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera open failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/railty/cerfandroid/CameraBridge;->Stop()V

    .line 87
    :goto_3
    return-void

    .line 60
    :catch_3
    move-exception v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera list failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method Stop()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->session:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iput-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->session:Landroid/hardware/camera2/CameraCaptureSession;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->device:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->device:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->device:Landroid/hardware/camera2/CameraDevice;

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->reader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->reader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->reader:Landroid/media/ImageReader;

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->thread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/railty/cerfandroid/CameraBridge;->handler:Landroid/os/Handler;

    .line 177
    :cond_3
    const-string v0, "CERF-Camera"

    const-string v1, "camera stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
