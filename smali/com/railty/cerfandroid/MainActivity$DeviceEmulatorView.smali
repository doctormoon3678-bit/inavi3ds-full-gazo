.class final Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;
.super Landroid/view/SurfaceView;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceEmulatorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 770
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    .line 771
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 772
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 773
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->setFocusable(Z)V

    .line 774
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 778
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 779
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 780
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$4300(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->setMeasuredDimension(II)V

    .line 782
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$4300(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 785
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$100(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$200(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v0

    div-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 786
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p2}, Lcom/railty/cerfandroid/MainActivity;->access$100(Lcom/railty/cerfandroid/MainActivity;)I

    move-result p2

    mul-int/2addr p2, p1

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$200(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->setMeasuredDimension(II)V

    .line 787
    return-void

    .line 789
    :cond_1
    nop

    .line 790
    int-to-long v0, p1

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$200(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$100(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 791
    if-le v0, p2, :cond_2

    .line 792
    nop

    .line 793
    int-to-long v0, p2

    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$100(Lcom/railty/cerfandroid/MainActivity;)I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$200(Lcom/railty/cerfandroid/MainActivity;)I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_0

    .line 791
    :cond_2
    move p2, v0

    .line 795
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->setMeasuredDimension(II)V

    .line 796
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 832
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->getWidth()I

    move-result v0

    .line 833
    invoke-virtual {p0}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->getHeight()I

    move-result v1

    .line 834
    const/4 v2, 0x0

    if-lez v0, :cond_3

    if-gtz v1, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 836
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    :cond_1
    move v2, v4

    .line 838
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 839
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 840
    invoke-static {v3, p1, v2}, Lcom/railty/cerfandroid/MainActivity;->access$5900(FFI)V

    .line 841
    return v4

    .line 834
    :cond_3
    :goto_0
    return v2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 822
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$4400(Landroid/view/Surface;)V

    .line 823
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 24

    .line 800
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$4400(Landroid/view/Surface;)V

    .line 801
    iget-object v1, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/DeviceSettings;->Load(Landroid/content/Context;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object v1

    .line 802
    iget-object v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 803
    :cond_0
    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iget-boolean v3, v1, Lcom/railty/cerfandroid/DeviceSettings;->extraDllsEnabled:Z

    invoke-static {v2, v3}, Lcom/railty/cerfandroid/MainActivity;->access$4500(Lcom/railty/cerfandroid/MainActivity;Z)Ljava/lang/String;

    move-result-object v23

    .line 804
    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->gaNicEnabled:Z

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$4600(Z)V

    .line 805
    iget-object v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->oemName:Ljava/lang/String;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$4700(Ljava/lang/String;)V

    .line 806
    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$4800(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$4900(Ljava/lang/String;)V

    .line 807
    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->hideTaskbar:Z

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$5000(Z)V

    .line 808
    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->hideImeState:Z

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$5100(Z)V

    .line 809
    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->timeSync:Z

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$5200(Z)V

    .line 810
    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->clipboardShare:Z

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$5300(Z)V

    .line 811
    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iget-boolean v3, v1, Lcom/railty/cerfandroid/DeviceSettings;->cameraLink:Z

    invoke-static {v2, v3}, Lcom/railty/cerfandroid/MainActivity;->access$5402(Lcom/railty/cerfandroid/MainActivity;Z)Z

    .line 812
    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iget-boolean v3, v1, Lcom/railty/cerfandroid/DeviceSettings;->nledLink:Z

    invoke-static {v2, v3}, Lcom/railty/cerfandroid/MainActivity;->access$5502(Lcom/railty/cerfandroid/MainActivity;Z)Z

    .line 813
    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iget-boolean v3, v1, Lcom/railty/cerfandroid/DeviceSettings;->clipboardShare:Z

    invoke-static {v2, v3}, Lcom/railty/cerfandroid/MainActivity;->access$5600(Lcom/railty/cerfandroid/MainActivity;Z)V

    .line 814
    iget-object v2, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-virtual {v2}, Lcom/railty/cerfandroid/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    iget-object v6, v1, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    iget-object v7, v1, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    iget-object v8, v1, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    iget-object v9, v1, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    iget v10, v1, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    iget v11, v1, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    iget v12, v1, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    iget v13, v1, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    iget-boolean v14, v1, Lcom/railty/cerfandroid/DeviceSettings;->touchPanelInput:Z

    iget-wide v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    move-wide v15, v2

    iget-wide v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    move-wide/from16 v17, v2

    iget-boolean v2, v1, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    iget-object v3, v0, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->this$0:Lcom/railty/cerfandroid/MainActivity;

    .line 817
    invoke-static {v3}, Lcom/railty/cerfandroid/MainActivity;->access$5700(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;

    move-result-object v20

    iget-boolean v3, v1, Lcom/railty/cerfandroid/DeviceSettings;->glesEnabled:Z

    iget-boolean v1, v1, Lcom/railty/cerfandroid/DeviceSettings;->extraDllsEnabled:Z

    .line 814
    move/from16 v22, v1

    move/from16 v19, v2

    move/from16 v21, v3

    invoke-static/range {v4 .. v23}, Lcom/railty/cerfandroid/MainActivity;->access$5800(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZDDZLjava/lang/String;ZZLjava/lang/String;)V

    .line 818
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 827
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/railty/cerfandroid/MainActivity;->access$4400(Landroid/view/Surface;)V

    .line 828
    return-void
.end method
