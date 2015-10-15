# Hello World!
class HelloTrema < Trema::Controller
  def start(_args)
    logger.info 'Hi! from ' + self.class.name
  end

  def switch_ready(datapath_id)
    logger.info "Hello #{datapath_id.to_hex}!"
  end

  def switch_disconnected(dpid)
    logger.info 'Stop ' + dpid.to_hex + '!'
  end
end
