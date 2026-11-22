.class Lcom/railty/cerfandroid/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1034
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1037
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$5500(Lcom/railty/cerfandroid/MainActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$6700()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1038
    :goto_0
    and-int/lit16 v2, v0, 0xff

    .line 1039
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 1040
    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 1041
    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 1042
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v5}, Lcom/railty/cerfandroid/MainActivity;->access$6804(Lcom/railty/cerfandroid/MainActivity;)I

    .line 1043
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    .line 1044
    :goto_1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    .line 1045
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    const/4 v3, 0x5

    move v4, v3

    .line 1046
    :cond_2
    add-int/2addr v4, v3

    .line 1047
    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$6800(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v2

    rem-int/2addr v2, v4

    if-ge v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v6, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    .line 1049
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$6900(Lcom/railty/cerfandroid/MainActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$6900(Lcom/railty/cerfandroid/MainActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v6, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    :cond_7
    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v5, v1

    .line 1051
    :goto_5
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$7000(Lcom/railty/cerfandroid/MainActivity;)Z

    move-result v0

    if-eq v5, v0, :cond_a

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$7100(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1052
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0, v5}, Lcom/railty/cerfandroid/MainActivity;->access$7002(Lcom/railty/cerfandroid/MainActivity;Z)Z

    .line 1053
    if-eqz v5, :cond_9

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$7100(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Vibrator;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_6

    .line 1054
    :cond_9
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$7100(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1056
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$21;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1900(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1057
    return-void

    :array_0
    .array-data 8
        0x0
        0x190
        0x12c
    .end array-data
.end method
