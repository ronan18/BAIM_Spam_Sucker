//
//  MessageFilterExtension.swift
//  MessageExtension
//
//  Created by Ronan Furuta on 2/18/23.
//

import IdentityLookup

final class MessageFilterExtension: ILMessageFilterExtension {}
extension MessageFilterExtension: ILMessageFilterQueryHandling {

    func handle(_ queryRequest: ILMessageFilterQueryRequest, context: ILMessageFilterExtensionContext, completion: @escaping (ILMessageFilterQueryResponse) -> Void) {
        // First, check whether to filter using offline data (if possible).
        let offlineAction = self.offlineAction(for: queryRequest)
        let response = ILMessageFilterQueryResponse()
        response.action = offlineAction

        completion(response)
        /*
        switch offlineAction {
        case .allow, .junk, .promotion, .transaction:
            // Based on offline data, we know this message should either be Allowed, Filtered as Junk, Promotional or Transactional. Send response immediately.
            let response = ILMessageFilterQueryResponse()
            response.action = offlineAction

            completion(response)

        case .none:
            // Based on offline data, we do not know whether this message should be Allowed or Filtered. Defer to network.
            // Note: Deferring requests to network requires the extension target's Info.plist to contain a key with a URL to use. See documentation for details.
            let response = ILMessageFilterQueryResponse()
            response.action = .allow

            completion(response)

        @unknown default:
            break
        }*/
    }

    private func offlineAction(for queryRequest: ILMessageFilterQueryRequest) -> ILMessageFilterAction {
        print("JUST STOP RUNNING")
        print(queryRequest.sender as Any, queryRequest.messageBody as Any, "JUST STOPj")
      let blockedPrefix = "1410"
        if let number = queryRequest.sender {
            print("JUST STOP number", number, number.hasPrefix(blockedPrefix))
            if number.hasPrefix(blockedPrefix) {
                return .junk
            } else if number.hasPrefix("+1410") {
                return .junk
            } else if number.hasPrefix("410") {
                return .junk
            }
            
        }
            return .none
        
      
        
       
    }

    private func action(for networkResponse: ILNetworkResponse) -> ILMessageFilterAction {
        // Replace with logic to parse the HTTP response and data payload of `networkResponse` to return an action.
        return .none
    }

}
