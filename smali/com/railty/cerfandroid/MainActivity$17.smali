.class Lcom/railty/cerfandroid/MainActivity$17;
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

    .line 944
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$17;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 947
    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$6000()Ljava/lang/String;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$17;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$6100(Lcom/railty/cerfandroid/MainActivity;)Landroid/content/ClipboardManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$17;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$6200(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$17;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1, v0}, Lcom/railty/cerfandroid/MainActivity;->access$6202(Lcom/railty/cerfandroid/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 950
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$17;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$6100(Lcom/railty/cerfandroid/MainActivity;)Landroid/content/ClipboardManager;

    move-result-object v1

    const-string v2, "WM"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$17;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1900(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 953
    return-void
.end method
