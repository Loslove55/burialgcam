.class final synthetic Lfao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lfat;


# direct methods
.method public constructor <init>(Lfat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfao;->a:Lfat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfao;->a:Lfat;

    invoke-virtual {v0}, Lfat;->c()V

    return-void
.end method
