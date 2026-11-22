.class Lcom/railty/cerfandroid/MainActivity$1;
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

    .line 59
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 62
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$000()I

    move-result v0

    .line 63
    ushr-int/lit8 v1, v0, 0x10

    .line 64
    const v2, 0xffff

    and-int/2addr v0, v2

    .line 65
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$100(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$200(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2, v1}, Lcom/railty/cerfandroid/MainActivity;->access$102(Lcom/railty/cerfandroid/MainActivity;I)I

    .line 67
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1, v0}, Lcom/railty/cerfandroid/MainActivity;->access$202(Lcom/railty/cerfandroid/MainActivity;I)I

    .line 68
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$300(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/railty/cerfandroid/MainActivity$DeviceEmulatorView;->requestLayout()V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$400(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CellBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$400(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CellBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/railty/cerfandroid/CellBridge;->Poll()V

    .line 71
    :cond_2
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$600(Lcom/railty/cerfandroid/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 73
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$600(Lcom/railty/cerfandroid/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$700()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 76
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$800(Lcom/railty/cerfandroid/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$900(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 77
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1, v0}, Lcom/railty/cerfandroid/MainActivity;->access$902(Lcom/railty/cerfandroid/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$1200(Lcom/railty/cerfandroid/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v6, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v6}, Lcom/railty/cerfandroid/MainActivity;->access$1000(Lcom/railty/cerfandroid/MainActivity;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/railty/cerfandroid/MainActivity;->access$1100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1300(Lcom/railty/cerfandroid/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1200(Lcom/railty/cerfandroid/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/railty/cerfandroid/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/MainActivity$1$1;-><init>(Lcom/railty/cerfandroid/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$800(Lcom/railty/cerfandroid/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    .line 89
    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1500(Lcom/railty/cerfandroid/MainActivity;)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v3

    .line 90
    :goto_1
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$1700(Lcom/railty/cerfandroid/MainActivity;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_8

    :cond_7
    if-eqz v0, :cond_9

    .line 91
    :cond_8
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1200(Lcom/railty/cerfandroid/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0, v3}, Lcom/railty/cerfandroid/MainActivity;->access$1802(Lcom/railty/cerfandroid/MainActivity;Z)Z

    .line 93
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0, v3}, Lcom/railty/cerfandroid/MainActivity;->access$802(Lcom/railty/cerfandroid/MainActivity;Z)Z

    .line 94
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1900(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$1;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1900(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method
